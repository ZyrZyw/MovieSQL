"""
WSGI config for dnomovie project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.8/howto/deployment/wsgi/
"""

import os,sys
sys.path.append('/Users/zhangyiwen/Documents/django/dnomovie-master')

from django.core.wsgi import get_wsgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "dnomovie.settings")

application = get_wsgi_application()
