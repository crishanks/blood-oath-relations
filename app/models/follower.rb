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
        # BloodOath.new("#{Time.now.strftime("%Y/%m/%d")}")
        self.cults << cult
        cult.followers << self
    end

    def self.of_a_certain_age(age)
        Follower.all.select{|follower| follower.age >= age}
    end

    def my_cults_slogans
        self.cults.each do |cult| 
            puts cult.slogan
        end
        nil
    end

    def self.most_active
        most_cults = 0
        Follower.all.each {|follower| most_cults = follower.cults.count if follower.cults.count > most_cults}
        Follower.all.find {|follower| follower.cults.count == most_cults}
    end

    def self.top_ten
        follower_cults_count = {}
        Follower.all.each do |follower|
            follower_cults_count[follower] = follower.cults.count
        end
        sorted_followers = follower_cults_count.sort_by {|key, value| value}.reverse
        top_followers = sorted_followers.map {|array| array[0]}
        top_ten = top_followers.slice(0, 10)
    end

    def self.all
        @@all
    end
end