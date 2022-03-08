# Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.
#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    hour = s[0, 2].to_i
    temp = (1..12).to_a.rotate(-1).index(hour)
    military_hr = s[-2, 2] == 'PM' ? temp + 12 : temp
    military_hr.to_s.rjust(2, '0') + s[2, 6]
end
