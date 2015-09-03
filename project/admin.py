from django.contrib import admin
from project.models import Project, Pledgers, Comment, Update
from django import forms


class Updateline(admin.TabularInline):
    model = Update
    extra = 1


class Pledgerline(admin.TabularInline):
    model = Pledgers
    extra = 1


class Commentline(admin.TabularInline):
    model = Comment
    extra = 1


class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title', 'our_story', 'misc', 'is_review')
    fields = ('title', 'our_story', 'img_link', 'why_want_doula', 'our_doula', 'funding_amount', 'misc', 'link_fb', 'link_tw', 'link_inst', 'is_review', 'expdate', 'userid')
    inlines = [Pledgerline, Updateline, Commentline]

    def formfield_for_dbfield(self, db_field, **kwargs):
        formfield = super(ProjectAdmin, self).formfield_for_dbfield(db_field, **kwargs)
        if db_field.name == 'our_story':
            formfield.widget = forms.Textarea(attrs=formfield.widget.attrs)
        if db_field.name == 'why_want_doula':
            formfield.widget = forms.Textarea(attrs=formfield.widget.attrs)
        if db_field.name == 'our_doula':
            formfield.widget = forms.Textarea(attrs=formfield.widget.attrs)
        if db_field.name == 'misc':
            formfield.widget = forms.Textarea(attrs=formfield.widget.attrs)
        return formfield

admin.site.register(Project, ProjectAdmin)
