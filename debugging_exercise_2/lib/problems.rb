# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.


require "byebug"


def largest_prime_factor(num)
    num.downto(2) do |n|
        return n if num % n == 0 && prime?(n)
    end
end

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

def unique_chars?(string)
    char_set = Set.new()
    string.each_char do |char|
        return false if char_set.include?(char)
        char_set.add(char)
    end
    true
end

def dupe_indices(arr)
    values_indices = Hash.new { [] }
    arr.each_with_index do |element, i|
        #debugger
        values_indices[element] = values_indices[element] << i
    end
    
    values_indices.select do |k,v|
        v.size > 1
    end
end

def ana_array(arr1, arr2)
    return false if arr1.size != arr2.size
    arr2.each do |ele|
        return false if arr1.include?(ele) == false
    end
    true
end