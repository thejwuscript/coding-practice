def converter(string)
    ary1 = string.split(//)
    if ary1[0] == 'S'
        puts split_string(ary1[4..-1])
    else
        ary1.push('(', ')') if ary1[2] == 'M'
        ary1[4].upcase! if ary1[2] == 'C'
        
        puts combine_string(ary1[4..-1])
    end
end

def split_string(array)
    if array[-2] == '(' && array[-1] == ')'
        array.pop(2)
    end
    indexes = array.each_index.select { |i| array[i] == array[i].upcase }
    indexes.delete_if {|n| n == 0}
    indexes.each {|n| array.insert(n, ' ')}
    array.map! {|item| item.downcase}
    array.join
end

def combine_string(array)
    indexes = array.each_index.select {|index| array[index] == ' '}
    indexes.each {|n| array[n+1].upcase!}
    array.delete_if { |item| item == ' '}
    array.join
end

loop do
    input = gets
    break if input.nil?
    
    converter(input.chomp)
end