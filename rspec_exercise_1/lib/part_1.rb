def average(n1, n2)
    (n1 + n2) / 2.0
end

def average_array(arr)
    arr.inject {|sum, ele| sum + ele}.to_f / arr.length
end

def repeat(str, count)
    result = ""
    count.times {result += str}
    result
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(sentence)
    sentence.split(" ").map.with_index {|word,idx| idx.even? ? word.upcase : word.downcase}.join(" ")
end