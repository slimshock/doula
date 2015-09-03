from django.shortcuts import render
from doulaprofile.models import Doulaprofile
from django.contrib import messages
from django.http import Http404,HttpResponseRedirect
from django.shortcuts import get_object_or_404, render_to_response
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.models import User
from django.template import RequestContext
from doulaprofile.forms import DoulaprofileForm


def doulaprofile_list(request):
    doulaprofile = Doulaprofile.objects.filter(userid=request.user.id)
    doulaprofiles = Doulaprofile.objects.all()
    for item in doulaprofiles:
        user = User.objects.get(id=item.userid)
        item.username = user.username
        item.first_name = user.first_name
        item.last_name = user.last_name
    return render(request, 'doulaprofile_list.html', {'doulaprofiles': doulaprofiles, 'doulaprofile': doulaprofile})


def doulaprofile(request, id):
    doulaprofile = Doulaprofile.objects.filter(userid=id)
    for item in doulaprofile:
        user = User.objects.get(id=item.userid)
        item.username = user.username
        item.first_name = user.first_name
        item.last_name = user.last_name
    return render(request, 'doulaprofile.html', {'doulaprofile': doulaprofile})


def doulaprofile_create(request):
    if request.method == "POST":
        doulaprofile = Doulaprofile.objects.create_doulaprofile(request.POST['about_me'], request.POST['education'],
                                                           request.POST['why_they_doula'], request.POST['testimonials'])
        doulaprofile.userid = request.POST['userid']
        doulaprofile.save()
        messages.info(request, 'Profile has been successfully created.')
        return HttpResponseRedirect('/doula/profile')
    else:
        form = DoulaprofileForm()

    return render(request, 'doulaprofile_create.html', {'form': form})


def doulaprofile_edit(request):
    instance = get_object_or_404(Doulaprofile, userid=request.user.id)
    if request.method == "POST":
        form = DoulaprofileForm(request.POST, request.FILES, instance=instance)
        doulapro = form.save(commit=False)
        doulapro.about_me = request.POST['about_me']
        doulapro.education = request.POST['education']
        doulapro.why_they_doula = request.POST['why_they_doula']
        doulapro.testimonials = request.POST['testimonials']
        doulapro.save()
        form.save_m2m()
        form.save()
        messages.info(request, 'Profile has been successfully updated.')
        return HttpResponseRedirect('/doula/profile/'+str(request.user.id))
    else:
        form = DoulaprofileForm(instance=instance)
        dlpro = Doulaprofile.objects.filter(userid=request.user.id)

    return render(request, 'doulaprofile_edit.html', {'form': form, 'doulapro': dlpro})

