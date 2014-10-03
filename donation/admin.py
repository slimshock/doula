from django.contrib import admin
from donation.models import Donation

class DonationAdmin(admin.ModelAdmin):
    list_display = [f.name for f in Donation._meta.fields]
admin.site.register(Donation, DonationAdmin)