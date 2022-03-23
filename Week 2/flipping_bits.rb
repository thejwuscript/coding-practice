def flippingBits(n)
    string = n.to_s(2)
    array = string.split(//).map { |n| n == "0" ? "1" : "0" }
    until array.size == 32 do
        array.unshift("1")
    end
    array.join.to_i(2)
end