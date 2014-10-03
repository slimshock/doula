from django.shortcuts import render
from project.models import Project, Pledgers, Comment
from django.contrib import messages
from django.http import Http404,HttpResponseRedirect
from django.shortcuts import get_object_or_404, render_to_response
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.models import User
from django.db.models import Sum
from django.contrib.humanize.templatetags.humanize import intcomma
# Create your views here.


def currency(dollars):
    dollars = round(float(dollars), 2)
    return "$%s%s" % (intcomma(int(dollars)), ("%0.2f" % dollars)[-3:])


def create_project(request):
    return render(request, 'create.html')


def show_project_page(request, id):
    p = Project.objects.filter(id=id)

    pl = Pledgers.objects.filter(project_id=id)
    for item in pl:
        user = User.objects.get(id=item.user_id)
        item.username = user.username

    comment = Comment.objects.filter(project_id=id)
    for item in comment:
        user = User.objects.get(id=item.user_id)
        item.username = user.username
    return render(request, 'projectpage.html', {'project': p, 'pledger': pl, 'comments': comment})


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
        messages.info(request, 'Your pledge has been recorded')
        return HttpResponseRedirect('/doula/show/'+str(proj_id))


def _comment(request):
    if request.method == "POST":
        comments = request.POST.get('comments', False)
        proj_id = int(request.POST.get('pid', False))
        user_id = int(request.POST.get('uid', False))
        comment = Comment.objects.comments(user_id, proj_id, comments)
        comment.save()
        messages.info(request, 'Your comment has been recorded')
        return HttpResponseRedirect('/doula/show/'+str(proj_id))


def show_projects(request):	
    p = Project.objects.all()
    user = []
    for item in p:
        user = User.objects.filter(id=item.userid)
    return render(request, 'project.html', {'project': p, 'username': user})


def save_project(request):
    if request.method == "POST":
        project = Project.objects.create_project(request.POST['title'], request.POST['our_story'], request.POST['funding_amount'], request.POST['days_req'])
        project.img_link = request.POST['img_link']
        project.why_want_doula = request.POST['why_want_doula']
        project.our_doula = request.POST['our_doula']
        project.misc = request.POST['misc']
        project.link_fb = request.POST['link_fb']
        project.link_tw = request.POST['link_tw']
        project.link_inst = request.POST['link_inst']
        project.userid = request.user.id
        project.save()
        messages.info(request, 'Project has been successfully created and needs a review from website administrator.')
        return HttpResponseRedirect('/doula')


def pledge(request):
    if request.method == "POST":
        pledge = Pledgers.objects.pledge(request.user.id, request.POST['project_id'], request.POST['amount'])
        pledge.save()
        messages.info(request, 'Your pledge has been recorded')
        return HttpResponseRedirect('/')


def _confirm_project(request, id):
    project = Project.objects.get(id=id)
    project.is_review = 1
    project.save()
    messages.info(request, 'Doula has been confirm.')
    return HttpResponseRedirect('/doula/show/'+str(id))