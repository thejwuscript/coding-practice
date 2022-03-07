# Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

def plusMinus(arr)
    pos_nums = arr.select {|n| n.positive?}
    neg_nums = arr.select {|n| n.negative?}
    zeros = arr.select {|n| n.zero?}

    puts "%.6f" % (pos_nums.size.to_f/arr.size)
    puts "%.6f" % (neg_nums.size.to_f/arr.size)
    puts "%.6f" % (zeros.size.to_f/arr.size)
end