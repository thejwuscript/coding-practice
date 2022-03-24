def diagonalDifference(arr)
    num1 = 0
    num2 = 0
    for i in 0..arr.size - 1 do
        num1 += arr[i][i]
        num2 += arr[i][-(i+1)]
    end
    (num1 - num2).abs
end