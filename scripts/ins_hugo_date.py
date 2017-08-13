#! /usr/bin/env python

from datetime import datetime
import tzlocal
import sys

now = datetime.now(tzlocal.get_localzone())

hugo_date = now.strftime("%Y-%m-%dT%H:%M:%S%z")

hugo_date = hugo_date[:-2] + ':' + hugo_date[-2:]

sys.stdout.write(hugo_date)

