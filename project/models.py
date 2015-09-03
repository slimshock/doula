from django.db import models
from time import time
from datetime import datetime, timedelta

def get_upload_file_name(instance, filename):
    return "uploaded_files/%s_%s" % (str(time()).replace('.', '_'), filename)


class ProjectManager(models.Manager):
    def create_project(self, title, story, fundamount, days):
        project = self.create(title=title, our_story=story, funding_amount=fundamount, days_req=days)
        return project


class Project(models.Model):
    #project_id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=4000)
    our_story = models.CharField(max_length=4000)
    img_link = models.FileField('Add Photo', upload_to=get_upload_file_name)
    #img_link2 = models.FileField('Add Photo', upload_to=get_upload_file_name, blank=True)
    #img_link3 = models.FileField('Add Photo', upload_to=get_upload_file_name, blank=True)
    #img_link4 = models.FileField('Add Photo', upload_to=get_upload_file_name, blank=True)
    why_want_doula = models.CharField('Why we need doula', max_length=4000)
    our_doula = models.CharField(max_length=4000)
    funding_amount = models.IntegerField(default=1)
    misc = models.CharField('Miscellaneous', max_length=4000)
    link_fb = models.CharField('Facebok', max_length=4000, blank=True)
    link_tw = models.CharField('Twitter', max_length=4000, blank=True)
    link_inst = models.CharField('Instagram', max_length=4000, blank=True)
    days_req = models.IntegerField(default=60)
    is_review = models.BooleanField('Confirm', default=False)
    totalpledgers = models.IntegerField(default=0)
    totalpledgeamount = models.IntegerField(default=0)
    userid = models.IntegerField('User ID', default=0)
    startdate = models.DateTimeField(auto_now_add=True)
    expdate = models.DateTimeField('Expiration Date', default=datetime.now()+timedelta(days=60))
    objects = ProjectManager()


class PledgeManager(models.Manager):
    def pledge(self, userid, projectid, amount, comments):
        pledge = self.create(user_id=userid, project_id=projectid, amount_pledged=amount, comments=comments)
        return pledge


class Pledgers(models.Model):
    #pid = models.AutoField(primary_key=True)
    user_id = models.IntegerField(default=1)
    username = models.CharField(max_length=200, blank=True)
    email = models.CharField(max_length=200, blank=True)
    project = models.ForeignKey(Project)
    amount_pledged = models.IntegerField(default=0)
    comments = models.CharField(max_length=4000, blank=True)
    datecreated = models.DateTimeField(auto_now_add=True)
    objects = PledgeManager()


class CommentManager(models.Manager):
    def comments(self, uid, projectid, comments):
        comments = self.create(user_id=uid, project_id=projectid, comments=comments)
        return comments


class Comment(models.Model):
    #pid = models.AutoField(primary_key=True)
    user_id = models.IntegerField(default=0)
    #project_id = models.IntegerField(default=0)
    project = models.ForeignKey(Project)
    comments = models.CharField(max_length=4000)
    datecreated = models.DateTimeField(auto_now_add=True)
    objects = CommentManager()


class UpdateManager(models.Manager):
    def updates(self, uid, projectid, updates):
        updates = self.create(user_id=uid, project_id=projectid, updates=updates)
        return updates


class Update(models.Model):
    #pid = models.AutoField(primary_key=True)
    user_id = models.IntegerField(default=0)
    #project_id = models.IntegerField(default=0)
    project = models.ForeignKey(Project)
    updates = models.CharField(max_length=4000)
    datecreated = models.DateTimeField(auto_now_add=True)
    objects = UpdateManager()