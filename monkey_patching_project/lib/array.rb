# Monkey-Patch Ruby's existing Array class to add your own custom methods
require "byebug"

class Array
    def span
        return nil if self.empty?
        self.max - self.min
    end

    def average
        return nil if self.empty?        
        self.sum.to_f / self.length
    end

    def median
        return nil if self.empty?
        sorted = self.sort
        len = self.length
        if len.even?
            (sorted[len / 2 - 1] + sorted[len / 2]) / 2.0
        else
            sorted[len / 2]
        end
    end

    def counts
        count_hash = Hash.new(0)
        self.each do |ele|
            count_hash[ele] += 1
        end
        count_hash
    end

    def my_count(val)
        count = 0
        self.each {|ele| count += 1 if val == ele}
        count
    end

    def my_index(val)
        self.each_index {|id| return id if self[id] == val }
        nil
    end

    def my_uniq
        uniq_arr = []
        self.each {|ele| uniq_arr << ele if !uniq_arr.include?(ele)}
        uniq_arr
    end

    def my_transpose
        transposed = []
        n = self.length
        return self if n == 0
        m = self[0].length
        return self if m == 0
        (0...n).each do |i|
            new_row = []
            (0...m).each do |j|
                new_row << self[j][i]
            end
            transposed << new_row
        end
        transposed
    end        
         
end
