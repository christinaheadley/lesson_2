require 'pry'
# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# def short_long_short(a, b)
#   if a.length < b.length
#     a + b + a
#   else
#     b + a + b
#   end
# end

# puts short_long_short('abc', 'defgh') == "abcdefghabc"
# puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
# puts short_long_short('', 'xyz') == "xyz"

# Write a method that takes a year as input
# century ends in 1 = ___1st
# century ends in 2 = ___2nd
# century ends in 3 = ___3rd
# 4-19, 24-30, 34-40 = __th

# def century(int)
#   if int % 100 == 0
#     number = (int / 100).to_s
#   else
#     number = (int / 100 + 1).to_s
#   end
#   if number.end_with?("11")
#     number + 'th'
#   elsif number.end_with?("12")
#     number + 'th'
#   elsif number.end_with?("13")
#     number + 'th'
#   elsif number.end_with?("1")
#     number + 'st'
#   elsif number.end_with?("2")
#     number + 'nd'
#   elsif number.end_with?("3")
#     number + 'rd'
#   else
#     number + 'th'
#   end
# end

# p century(2000)  == '20th'
# p century(2001)  == '21st'
# p century(1965)  == '20th'
# p century(256)  == '3rd'
# p century(5)  == '1st'
# p century(10103)  == '102nd'
# p century(1052)  == '11th'
# p century(1127)  == '12th'
# p century(11201)  == '113th'

# Theirs:
# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# Leap Years (Part 1)
# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.
# I: Integer O: bool

# def leap_year?(year)
#   return true if year % 400 == 0
#   return true if year % 4 == 0 && year % 100 != 0
#   false
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true

# def leap_year?(year)
#   if year < 1752
#     return true if year % 4 == 0
#   else
#     return true if year % 400 == 0
#     return true if year % 4 == 0 && year % 100 != 0
#   end
#   false
# end

# THEIRS:
# def leap_year?(year)
#   if year < 1752 && year % 4 == 0
#     true
#   elsif year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true

# Multiples of 3 and 5
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# def multisum(int)
#   ((1..int).select { |i| (i % 3 == 0) || (i % 5 == 0) }).sum
# end

# # p multisum(15)
# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168


Running Totals
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.


