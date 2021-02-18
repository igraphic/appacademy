def hipsterfy(word)
    new_word = ""
    i = word.length - 1
    while i >= 0
        if "aeiou".include?(word[i])
            new_word = word[0...i] + new_word
            break
        else
            new_word = word[i] + new_word
        end
        i -= 1
    end
    new_word
end

def vowel_counts(str)
    vowels = Hash.new(0)
    str.each_char do |char|
        vowels[char.downcase] += 1 if "aeiou".include?(char.downcase)
    end
    vowels    
end

def caesar_cipher(message, n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    shifted = ""
    message.each_char do |char|
        shifted_char = alphabet.include?(char) ? alphabet[(alphabet.index(char) + n) % 26] : char
        shifted << shifted_char
    end
    shifted
end