from django.db import models
from time import time
from datetime import datetime, timedelta

def get_upload_file_name(instance, filename):
    return "uploaded_files/%s_%s" % (str(time()).replace('.', '_'), filename)


class DoulaprofileManager(models.Manager):
    def create_doulaprofile(self, about_me, education, why_they_doula, testimonials):
        doulaprofile = self.create(about_me=about_me, education=education, why_they_doula=why_they_doula,
                              testimonials=testimonials)
        return doulaprofile


class Doulaprofile(models.Model):
    userid = models.IntegerField(default=0)
    about_me = models.CharField(max_length=4000)
    education = models.CharField(max_length=4000)
    bio_pic = models.FileField(upload_to=get_upload_file_name)
    why_they_doula = models.CharField(max_length=4000)
    testimonials = models.CharField(max_length=4000)
    objects = DoulaprofileManager()
