=begin
You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
=end

def sunday_count(year=1901)
  
  @month_days = {
    :january => 31,
    :february_leap => 29,
    :february_normal => 28,
    :march => 31,
    :april => 30,
    :may => 31,
    :june => 30,
    :july => 31,
    :august => 31,
    :september => 30,
    :october => 31,
    :november => 30,
    :december => 31
  }

  if year % 4 == 0

  else

  end
  
end

sunday_count
p @month_days[:february_normal]