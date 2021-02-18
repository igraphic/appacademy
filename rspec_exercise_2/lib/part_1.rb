def partition(arr, n)
    arr1 = []
    arr2 = []
    arr.each {|ele| ele < n ? arr1 << ele : arr2 << ele}
    [arr1, arr2]
end

def merge(hash1, hash2)
    new_hash = {}
    hash1.keys.each {|k| new_hash[k] = hash1[k]}
    hash2.keys.each {|k| new_hash[k] = hash2[k]}
    new_hash
end

def censor(sentence, curses)
    sentence.split(" ").map {|word| curses.include?(word.downcase) ? replace_vowels(word) : word}.join(" ")
end

def replace_vowels(word)
    new_word = ""
    word.each_char {|char| new_word << ("aeiou".include?(char.downcase) ?  "*" : char)}
    new_word
end

def power_of_two?(n)
    while n > 1
        if(n % 2) == 0
            n /= 2
        else
            return false
        end
    end
    true
end