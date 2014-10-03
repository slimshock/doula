from django.contrib import admin
from project.models import Project, Pledgers, Comment


class Pledgerline(admin.TabularInline):
    model = Pledgers
    extra = 1

class Commentline(admin.TabularInline):
    model = Comment
    extra = 1

class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title', 'our_story', 'misc', 'is_review')
    inlines = [Pledgerline, Commentline]

admin.site.register(Project, ProjectAdmin)


