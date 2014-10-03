from django.shortcuts import render_to_response
from django.http import HttpResponse, HttpResponseRedirect
from django.template import RequestContext
from project.models import Project, Pledgers, Comment
from django.contrib import messages
from donation.models import Donation
from donation.forms import DonationPaymentForm


def charge(request, id):
    if request.method == "POST":
        form = DonationPaymentForm(request.POST)
        
        if form.is_valid(): # charges the card
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
            #return HttpResponse("Success! We've charged your card!")
            return HttpResponseRedirect('/doula/show/'+str(proj_id))
    else:
        p = Project.objects.filter(id=id)
        form = DonationPaymentForm()
    
    return render_to_response("charge.html", RequestContext( request, {'project': p, 'form': form} ) )