#!/bin/ruby

# Author: Zil Vyas
# https://www.hackerrank.com/challenges/time-conversion/problem

time_str = gets.strip

# the last two characters are AM/PM
am_pm = time_str[-2..-1]

# get hours, minutes, seconds, excluding the last two char, AM/PM
hour_min_sec = time_str[0...(time_str.length - 2)].split(':').map(&:to_i)

if (am_pm == 'PM') && (hour_min_sec[0] != 12)
  hour_min_sec[0] += 12
end
if (am_pm == 'AM') && (hour_min_sec[0] == 12)
  hour_min_sec[0] = 0
end

print sprintf("%02d:%02d:%02d", hour_min_sec[0], hour_min_sec[1], hour_min_sec[2])
