# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    curr = str[0]
    new_str = ""
    len = 1
    (1..(str.length - 1)).each do |i|
        if str[i] == str[i - 1]
            len += 1
        else
            new_str += compressed(str[i  - 1], len)
            len = 1
        end
    end
    new_str += compressed(str[-1], len)
end

def compressed(char, len)
    if len > 1
        "%d%s" % [len,char]
    else
        char
    end
end



p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
