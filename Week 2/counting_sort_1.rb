def countingSort(arr)
    integer_array = Array.new(100, 0)
    arr.each { |num| integer_array[num] += 1 }
    integer_array
end