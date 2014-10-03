from django.db import models

class ProjectManager(models.Manager):
    def create_project(self, title, story, fundamount, days):
        project = self.create(title=title, our_story=story, funding_amount=fundamount, days_req=days)
        return project


class Project(models.Model):
    #project_id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=200)
    our_story = models.CharField(max_length=4000)
    img_link = models.CharField(max_length=1000)
    why_want_doula = models.CharField(max_length=200)
    our_doula = models.CharField(max_length=4000)
    funding_amount = models.IntegerField(default=1)
    misc = models.CharField(max_length=4000)
    link_fb = models.CharField(max_length=4000)
    link_tw = models.CharField(max_length=4000)
    link_inst = models.CharField(max_length=4000)
    days_req = models.IntegerField(default=1)
    is_review = models.BooleanField(default=False)
    totalpledgers = models.IntegerField(default=0)
    totalpledgeamount = models.IntegerField(default=0)
    userid = models.IntegerField(default=0)
    objects = ProjectManager()


class PledgeManager(models.Manager):
    def pledge(self, userid, projectid, amount, comments):
        pledge = self.create(user_id=userid, project_id=projectid, amount_pledged=amount, comments=comments)
        return pledge


class Pledgers(models.Model):
    #pid = models.AutoField(primary_key=True)
    user_id = models.IntegerField(default=1)
    project = models.ForeignKey(Project)
    amount_pledged = models.IntegerField(default=0)
    comments = models.CharField(max_length=200)
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
    comments = models.CharField(max_length=200)
    objects = CommentManager()