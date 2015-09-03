from models import Project
from django import forms


class ProjectForm(forms.ModelForm):
    #title = forms.CharField(required=True)
    #our_story = forms.CharField(required=True)
    #img_link = forms.FileField(required=True)
    #why_want_doula = forms.CharField(required=True)
    #our_doula = forms.CharField(required=True)
    #funding_amount = forms.IntegerField(required=True)
    #misc = forms.CharField(required=True)
    #link_fb = forms.CharField(required=False)
    #link_tw = forms.CharField(required=False)
    #link_inst = forms.CharField(required=False)
    #days_req = forms.IntegerField(required=True)
    #userid = forms.IntegerField(required=True)

    class Meta:
        model = Project
        fields = ('title','our_story','img_link','why_want_doula','our_doula','funding_amount', 'days_req', 'userid')