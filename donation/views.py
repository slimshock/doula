from django.shortcuts import render_to_response
from django.http import HttpResponse, HttpResponseRedirect
from django.template import RequestContext
from project.models import Project, Pledgers, Comment
from django.contrib import messages
from donation.models import Donation
from donation.forms import DonationPaymentForm
from django.contrib.auth.models import User


def charge(request, id):
    if request.method == "POST":
        form = DonationPaymentForm(request.POST)

        if form.is_valid(): # charges the card
            amount = int(request.POST.get('amount', False))
            comments = request.POST.get('comment', False)
            username = request.POST.get('username', False)
            email = request.POST.get('email', False)
            proj_id = int(request.POST.get('pid', False))
            user_id = int(request.POST.get('uid', False))
            pledge = Pledgers.objects.pledge(user_id, proj_id, amount, comments)
            if user_id == -1:
                pledge.username = username
            else:
                user = User.objects.get(id=user_id)
                pledge.username = user.first_name + ' ' + user.last_name
            pledge.email = email
            pledge.save()
            project = Project.objects.get(id=proj_id)
            project.totalpledgers += 1
            project.totalpledgeamount += amount
            project.save()
            messages.info(request, 'Donation successful')
            #return HttpResponse("Success! We've charged your card!")
            #return HttpResponseRedirect('/doula/show/'+str(proj_id)+'#supporters&'+str(pledge.id))
            return HttpResponseRedirect('/doula/show/'+str(proj_id)+'#supporters')
        else:
            p = Project.objects.filter(id=id)
            form = DonationPaymentForm()
            messages.info(request, 'Please check your entry.')
    else:
        p = Project.objects.filter(id=id)
        form = DonationPaymentForm()

    return render_to_response("charge.html", RequestContext(request, {'project': p, 'form': form}))


def first_step(request, id):
    if request.method == "POST":
        amount = int(request.POST.get('amount', False))
        project = Project.objects.filter(id=id)
        return render_to_response("step2.html", RequestContext(request, {'amount': amount, 'project': project}))
    else:
        project = Project.objects.filter(id=id)
    return render_to_response("step1.html", RequestContext(request, {'project': project}))
