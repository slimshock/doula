from django.conf.urls import patterns, url, include
from django.conf import settings

from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf.urls.static import static

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    #(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    (r'^admin/', include(admin.site.urls)),

    # Demo Override the signup form with our own, which includes a
    # first and last name.
    # (r'^accounts/signup/$',
    #  'userena.views.signup',
    #  {'signup_form': SignupFormExtra}),

    (r'^accounts/', include('userena.urls')),
    (r'^messages/', include('userena.contrib.umessages.urls')),
    url(r'^$', 'profiles.views.promo', name='promo'),
    (r'^i18n/', include('django.conf.urls.i18n')),



    #url(r'^admin/', include(admin.site.urls)),
    #url(r'^$', TemplateView.as_view(template_name="index.html")),
    #url(r'^auth/$', TemplateView.as_view(template_name="login.html")),
    #url(r'^auth/register$', 'auth.views.register'),
    #url(r'^auth/create_user$', 'auth.views.create_user'),
    #url(r'^auth/login$', 'auth.views.__login'),
    #url(r'^auth/logout$', 'auth.views._logout'),
    #url(r'^auth/_login$', 'auth.views._login'),
    url(r'^donation/(?P<id>[0-9]+)/$', 'donation.views.charge'),
    url(r'^doula/$', 'project.views.show_projects', name='project'),
    url(r'^doula/save_comment', 'project.views._comment'),
    url(r'^doula/show/(?P<id>[0-9]+)/$', 'project.views.show_project_page', name='show_project_page'),
    url(r'^doula/create$', 'project.views.create_project', name='create_project'),
    url(r'^doula/save_project$', 'project.views.save_project'),
    url(r'^doula/pledge$', 'project.views.pledge'),
    url(r'^doula/save_pledge$', 'project.views._pledge'),
    url(r'^doula/save_comment', 'project.views._comment'),
    url(r'^doula/confirm_project/(?P<id>[0-9]+)/$', 'project.views._confirm_project'),
    #url(r'^profile/(?P<uid>[0-9]+)$', 'auth.views.profile', name='profile'),


)

# Add media and static files
urlpatterns += staticfiles_urlpatterns()
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


