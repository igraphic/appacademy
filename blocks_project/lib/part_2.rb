require "byebug"

def all_words_capitalized?(words)
    words.all? {|word| word.capitalize! == nil}
end

def no_valid_url?(urls)
    urls.none? do |url| 
        url.end_with?(".com") || url.end_with?(".net") ||
        url.end_with?(".io") || url.end_with?(".org")
    end
end

def any_passing_students?(students)
    students.any? do |student|
        grades = student[:grades]
        grades.sum / grades.size >= 75
    end
end