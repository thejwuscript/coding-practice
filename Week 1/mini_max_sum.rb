# Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

def miniMaxSum(arr)
    sum_all = arr.reduce {|result, n| result + n}
    small = sum_all - arr.max
    big = sum_all - arr.min
    puts "#{small} #{big}"
end