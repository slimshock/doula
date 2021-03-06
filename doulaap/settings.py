DEBUG = True
ALLOWED_HOSTS = ['*']
TEMPLATE_DEBUG = DEBUG

import os
settings_dir = os.path.dirname(__file__)
PROJECT_ROOT = os.path.abspath(os.path.dirname(settings_dir))

ADMINS = (
    # ('Your Name', 'your_email@example.com'),
)

MANAGERS = ADMINS

from databases import DATABASES

# Internationalization
TIME_ZONE = 'America/Chicago'
LANGUAGE_CODE = 'en-us'
ugettext = lambda s: s
LANGUAGES = (
    ('en', ugettext('English')),
)
LOCALE_PATHS = (
    os.path.join(PROJECT_ROOT, 'locale'),
)

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = True

# If you set this to False, Django will not format dates, numbers and
# calendars according to the current locale.
USE_L10N = True

# If you set this to False, Django will not use timezone-aware datetimes.
USE_TZ = True
MEDIA_ROOT = os.path.join(PROJECT_ROOT, 'public/media/')
MEDIA_URL = '/media/'
STATIC_ROOT = os.path.join(PROJECT_ROOT, 'public/static/')
STATIC_URL = '/static/'

STATICFILES_DIRS = (
    os.path.join(PROJECT_ROOT, 'doulaap/static/'),
)

GRAPPELLI_ADMIN_TITLE = 'Doula Project'

# List of finder classes that know how to find static files in
# various locations.
STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
    'django.contrib.staticfiles.finders.FileSystemFinder',
)

TEMPLATE_CONTEXT_PROCESSORS = (
    'django.core.context_processors.request',
    'django.contrib.auth.context_processors.auth',
    'django.contrib.messages.context_processors.messages',
)

# Make this unique, and don't share it with anybody.
SECRET_KEY = '_g-js)o8z#8=9pr1&amp;05h^1_#)91sbo-)g^(*=-+epxmt4kc9m#'

# List of callables that know how to import templates from various sources.
TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',
#     'django.template.loaders.eggs.Loader',
)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'userena.middleware.UserenaLocaleMiddleware',
)

# Add the Guardian and userena authentication backends
AUTHENTICATION_BACKENDS = (
    'userena.backends.UserenaAuthenticationBackend',
    'guardian.backends.ObjectPermissionBackend',
    'django.contrib.auth.backends.ModelBackend',
)

# Settings used by Userena
LOGIN_REDIRECT_URL = '/accounts/%(username)s/'
LOGIN_URL = '/accounts/signin/'
LOGOUT_URL = '/accounts/signout/'
AUTH_PROFILE_MODULE = 'profiles.Profile'
USERENA_DISABLE_PROFILE_LIST = False
USERENA_MUGSHOT_SIZE = 140
USERENA_WITHOUT_USERNAMES = True

ROOT_URLCONF = 'doulaap.urls'
WSGI_APPLICATION = 'doulaap.wsgi.application'

TEMPLATE_DIRS = (
    os.path.join(PROJECT_ROOT, 'doulaap/templates/'),
)

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'grappelli',
    'django.contrib.admin',
    'django.contrib.admindocs',
    'django.contrib.humanize',
    'guardian',
    'south',
    'userena',
    'userena.contrib.umessages',
    'profiles',
    'project',
    'doulaprofile',
    'donation',
    'easy_thumbnails',
)

LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        }
    },
    'handlers': {
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false'],
            'class': 'django.utils.log.AdminEmailHandler'
        }
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins'],
            'level': 'ERROR',
            'propagate': True,
        },
    }
}

EMAIL_USE_TLS = True
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_PORT = 587
EMAIL_HOST_USER = 'moolahforthedoula@gmail.com'
EMAIL_HOST_PASSWORD = 'doula&light01'


#EMAIL_USE_TLS = True
#EMAIL_HOST = 'smtp.gmail.com'
#EMAIL_PORT = 587
#EMAIL_HOST_USER = 'doula@trialx.com'
#EMAIL_HOST_PASSWORD = 'doula1234'

# Needed for Django guardian
ANONYMOUS_USER_ID = -1

# Test runner
TEST_RUNNER = 'django_coverage.coverage_runner.CoverageRunner'

#stripe
#STRIPE_API_KEY = 'sk_test_1QX4Nzx7fRrtweqk4eBmVaqL'
STRIPE_API_KEY = 'sk_live_pmpfdCBELo016zn4LTQj9Hdw'
