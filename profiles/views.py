from django.shortcuts import render
from project.models import Project
from django.contrib.auth.models import User
from userena import views as userena_views
import datetime
from django.utils.timezone import utc


def time_until(value):
    now = datetime.datetime.utcnow().replace(tzinfo=utc)
    difference = value - now
    return difference.days


def promo(request):
    p = Project.objects.exclude(is_review=False).order_by('-startdate')[:7]
    user = []
    for item in p:
        user = User.objects.get(id=item.userid)
        item.username = user.username
        item.percent = (float(item.totalpledgeamount) / float(item.funding_amount))*100
        item.percent = "%.2f" % item.percent
        ex = item.expdate
        item.expd = time_until(ex)
    return render(request, 'static/promo.html', {'project': p, 'username': user})
    #return render(request, 'static/promo.html')


def howitworks(request):
    return render(request, 'static/howitwork.html')


def aboutus(request):
    return render(request, 'static/aboutus.html')


def testimonial(request):
    return render(request, 'static/testimonial.html')


def privacy(request):
    return render(request, 'static/privacy.html')


def terms(request):
    return render(request, 'static/terms.html')