def reverser(str, &proc)
    proc.call(str.reverse)
end

def word_changer(sentence, &proc)
    new_sentence = []
    sentence.split(" ").each do |word|
        new_sentence << proc.call(word)
    end
    new_sentence.join(" ")
end

def greater_proc_value(num, proc1, proc2)
    [proc1.call(num), proc2.call(num)].max
end

def and_selector(arr, proc1, proc2)
    arr.select {|ele| proc1.call(ele) && proc2.call(ele)}
end

def alternating_mapper(arr, proc1, proc2)
    arr.each_with_index.map do |v, i|
        if i % 2 == 0
            proc1.call(v)
        else
            proc2.call(v)
        end
    end
end