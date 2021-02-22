class Dog

    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def bark
        if age > 3
            @bark.upcase
        else
            @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def age=(age)
        @age = age
    end

    def favorite_food?(food)
        @favorite_foods.each do |curr_food|
            return true if curr_food.casecmp(food) == 0
        end
        false
    end

end
