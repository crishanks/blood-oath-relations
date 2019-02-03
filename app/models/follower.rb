class Follower
    @@all = []
    attr_accessor :name, :age, :life_motto, :cults

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = []
        @@all << self
    end

    def join_cult(cult)
        self.cults << cult
        cult.followers << self
    end

    def self.of_a_certain_age(age)
        Follower.all.select{|follower| follower.age >= age}
    end

    def self.all
        @@all
    end
end