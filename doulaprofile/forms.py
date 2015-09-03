from models import Doulaprofile
from django import forms


class DoulaprofileForm(forms.ModelForm):
    class Meta:
        model = Doulaprofile
        fields = ['userid', 'bio_pic']