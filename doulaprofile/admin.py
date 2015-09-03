from django.contrib import admin
from doulaprofile.models import Doulaprofile


class DoulaprofileAdmin(admin.ModelAdmin):
    list_display = ('about_me', 'education', 'bio_pic', 'why_they_doula', 'testimonials')


admin.site.register(Doulaprofile, DoulaprofileAdmin)


