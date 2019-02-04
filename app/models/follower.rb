class Follower
    @@all = []
    attr_accessor :name, :age, :life_motto

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def oaths
        BloodOath.all.select {|oath| oath.follower == self}
    end

    def cults
        self.oaths.map do |oath|
            oath.cult
        end
    end

    def join_cult(cult)
        BloodOath.new(cult, self, initiation_date = DateTime.now.strftime("%Y/%m/%d"))
    end

    # def self.of_a_certain_age(age)
    #     BloodOath.all.select do |oath|
    #         oath.age >= age
    #     end
    # end

    def self.all
        @@all
    end
end