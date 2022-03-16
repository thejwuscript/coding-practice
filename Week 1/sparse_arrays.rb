def matchingStrings(strings, queries)
    queries.map do |element|
        array = strings.select { |item| item == element }
        array.size
    end
end