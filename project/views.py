from django.shortcuts import render
from project.models import Project, Pledgers, Comment, Update
from django.contrib import messages
from django.http import Http404,HttpResponseRedirect
from django.shortcuts import get_object_or_404, render_to_response
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.models import User
from django.template import RequestContext
from django.contrib.humanize.templatetags.humanize import intcomma
from project.forms import ProjectForm
import datetime
from django.utils.timezone import utc
from django.core.mail import send_mail


def time_until(value):
    now = datetime.datetime.utcnow().replace(tzinfo=utc)
    difference = value - now
    return difference.days


def currency(dollars):
    dollars = round(float(dollars), 2)
    return "$%s%s" % (intcomma(int(dollars)), ("%0.2f" % dollars)[-3:])


def create_project(request):
    return render(request, 'create.html')


def show_project_page(request, id):
    p = Project.objects.filter(id=id)
    for item in p:
        user = User.objects.get(id=item.userid)
        item.firstname = user.first_name
        item.lastname = user.last_name
        item.percent = (float(item.totalpledgeamount) / float(item.funding_amount))*100
        item.percent = "%.2f" % item.percent
        pldge = Pledgers.objects.filter(project_id=id).count()
        item.pldgetotal = pldge
        cmtotal = Comment.objects.filter(project_id=id).count()
        item.commenttotal = cmtotal
        uptotal = Update.objects.filter(project_id=id).count()
        item.updatetotal = uptotal
        ex = item.expdate
        item.expd = time_until(ex)
    pl = Pledgers.objects.filter(project_id=id).order_by('-datecreated')
    for item in pl:
        user = User.objects.get(id=item.user_id)
        if item.user_id == -1:
            item.username = "Anonymous Donor"
        else:
            item.username = user.first_name + 's ' + user.last_name
    comment = Comment.objects.filter(project_id=id)
    for item in comment:
        user = User.objects.get(id=item.user_id)
        if item.user_id == -1:
            item.username = "Anonymous"
        else:
            item.username = user.first_name + 's ' + user.last_name
    upd = Update.objects.filter(project_id=id)
    for item in upd:
        user = User.objects.get(id=item.user_id)
        item.username = user.username
    return render(request, 'projectpage.html', {'project': p, 'pledger': pl, 'comments': comment, 'updates': upd})


def _pledge(request):
    if request.method == "POST":
        amount = int(request.POST.get('amount', False))
        comments = request.POST.get('comments', False)
        proj_id = int(request.POST.get('pid', False))
        user_id = int(request.POST.get('uid', False))
        print proj_id
        pledge = Pledgers.objects.pledge(user_id, proj_id, amount, comments)
        pledge.save()
        project = Project.objects.get(id=proj_id)
        project.totalpledgers += 1
        project.totalpledgeamount += amount
        project.save()
        print '3333333333333333333333333'
        messages.info(request, 'Thank you for your donation.')
        return HttpResponseRedirect('/doula/show/'+str(proj_id))
        #return HttpResponseRedirect('/doula/show/'+str(proj_id)+'#supporters')


def _comment(request):
    if request.method == "POST":
        comments = request.POST.get('comments', False)
        proj_id = int(request.POST.get('pid', False))
        user_id = int(request.POST.get('uid', False))
        comment = Comment.objects.comments(user_id, proj_id, comments)
        comment.save()
        messages.info(request, 'Your comment has been recorded')
        return HttpResponseRedirect('/doula/show/'+str(proj_id)+'#comments&'+str(comment.id))


def _update(request):
    if request.method == "POST":
        update = request.POST.get('updates', False)
        proj_id = int(request.POST.get('pid', False))
        user_id = int(request.POST.get('uid', False))
        update = Update.objects.updates(user_id, proj_id, update)
        update.save()
        messages.info(request, 'Your updates has been recorded')
        return HttpResponseRedirect('/doula/show/'+str(proj_id)+'#updates&'+str(update.id))

def show_projects(request):	
    p = Project.objects.all().order_by('-startdate')
    user = []
    for item in p:
        user = User.objects.get(id=item.userid)
        item.username = user.username
        item.percent = (float(item.totalpledgeamount) / float(item.funding_amount))*100
        item.percent = "%.2f" % item.percent
        ex = item.expdate
        item.expd = time_until(ex)
    return render(request, 'project.html', {'project': p, 'username': user})


def save_project(request):
    if request.method == "POST":
        form = ProjectForm(request.POST, request.FILES)
        if form.is_valid():
            project = form.save(commit=False)
            print 'pass'
            #project.misc = request.POST['misc']
            project.link_fb = request.POST['link_fb']
            project.link_tw = request.POST['link_tw']
            project.link_inst = request.POST['link_inst']
            project.save()
            form.save_m2m()
            messages.info(request, 'Project has been successfully created and needs a review from website administrator.')
            send_mail('MoolahForTheDoula', 'A new project has been submitted. Please login as admin to verify and approve this project.', 'moolahforthedoula@gmail.com',
            ['moolahforthedoula@gmail.com'], fail_silently=False)
            print 'passssssssss'
            return HttpResponseRedirect('/doula')
        else:
            form = ProjectForm()
            messages.info(request, 'Please check your entry.')
    else:
        form = ProjectForm()

    return render_to_response("create.html", RequestContext(request, {'form': form}))


def pledge(request):
    if request.method == "POST":
        pledge = Pledgers.objects.pledge(request.user.id, request.POST['project_id'], request.POST['amount'])
        pledge.save()
        messages.info(request, 'Thank you for your donation.')
        return HttpResponseRedirect('/')


def _confirm_project(request, id):
    project = Project.objects.get(id=id)
    project.is_review = 1
    project.save()
    messages.info(request, 'Doula has been confirm.')
    return HttpResponseRedirect('/doula/show/'+str(id))