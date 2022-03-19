def lonelyinteger(a)
    a_hash = a.reduce(Hash.new(0)) do |result, number|
        result[number] += 1
        result
    end
    a_hash.key(1)
end