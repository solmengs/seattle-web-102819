require 'pry'

dogs = [
    { name: "Chico", breed: "american dingo", age: 3, owner: "Jacob" },
    { name: "Vicious", breed: "mastiff", age: 8, owner: "Taylor"},
    { name: "Bear", breed: "german shephard mix", age: 1, owner: "Tanner"}
]




class Dog 
    attr_accessor(:name, :breed, :age, :owner)

    @@all = []

    def initialize(name, breed, age, owner)
        @name = name
        @breed = breed
        @age = age
        @owner = owner
        @@all << self
    end

    def self.all
        @@all
    end

    def bark
        puts "AWOOOOOOOOOOH arf bark someone's here"
    end

    def self.german_shephards
        @@all.select do |dog|
        dog.breed == "german shephard mix"
        end
    end

    def self.names 
        # @@all.map { |dog| dog.name}
        @@all.map do |dog|
            dog.name
        end
    end

    def self.oldest
        # @@all.max_by do |dog|
        #     dog.age
        # end
        max_age = 0
        max_age_dog = nil
        @@all.each do |dog|
            if dog.age > max_age
                max_age = dog.age
                max_age_dog = dog
            end
        end
        max_age_dog
    end

    # def name 
    #     @name
    # end

    # def name=(name)
    #     @name = name
    # end

end

dogs.each do |dog|
    Dog.new(dog[:name], dog[:breed], dog[:age], dog[:owner])
end

bear = Dog.new("Bear", "german shephard mix", 3, "Tanner")
fido = Dog.new("Fido", "mutt", 3, "Lucy")
vicious = Dog.new("Vicious", "mastiff", 9999, "NOONE")





binding.pry
0