import calendar
from datetime import datetime

now = datetime.now()
year = now.year
month = now.month

print(calendar.month(year, month))
