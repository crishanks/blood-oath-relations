class Cult
    @@all = []
    attr_accessor :name, :location, :founding_year, :slogan, :followers

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @followers = []
        @@all << self
    end

    def recruit_follower(follower)
        self.followers << follower
        follower.cults << self
    end

    def cult_population
        self.followers.count
    end

    def self.all 
        @@all
    end

    def self.find_by_name(cult_name)
        Cult.all.find {|cult| cult.name == cult_name}
    end

    def self.find_by_location(location_name)
        Cult.all.select{|cult| cult.location == location_name}
    end

    def self.find_by_founding_year(year)
        Cult.all.select {|cult| cult.founding_year == year}
    end
end