def palindrome?(str)
    n = str.length
    (0..n/2).each {|i| return false if str[i] != str[n - i - 1]}
    true
end

def substrings (str)
    substrings = []
    (0...str.length).each {|i| (i+1..str.length).each {|j| substrings << str[i...j]}}
    substrings
end

def palindrome_substrings(str)
    palindrome_substrings = []
    substrings(str).each {|substring| palindrome_substrings << substring if substring.length > 1 && palindrome?(substring)}
    palindrome_substrings
end
