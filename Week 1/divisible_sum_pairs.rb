def divisibleSumPairs(n, k, ar)
    answer = 0
    ar.each_with_index do |num, ind|
        for i in (ind + 1)..(n - 1)
            answer += 1 if (num + ar[i]) % k == 0
            
        end
    end
    answer
end