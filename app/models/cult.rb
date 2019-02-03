require 'pry'

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
        # BloodOath.new("#{Time.now.strftime("%Y/%m/%d")}")
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

    def average_age
        age_sum = 0
        self.followers.each {|follower| age_sum += follower.age}
        age_sum / self.followers.count
    end

    def my_followers_mottos
        self.followers.each do |follower| 
            puts follower.life_motto
        end
        nil
    end

    def self.least_popular
        lowest_followers = Cult.all[0].followers.count
        Cult.all.each {|cult| lowest_followers = cult.followers.count if cult.followers.count < lowest_followers}
        Cult.all.find {|cult| cult.followers.count == lowest_followers}
    end

    def self.most_common_location
        cult_locations = {}
        Cult.all.each do |cult|
            city_exists = cult_locations[cult.location] != nil
            if !city_exists
                cult_locations[cult.location] = 1
            else
                cult_locations[cult.location]+= 1
            end
        end
        highest_location_pair = cult_locations.max_by {|key, value| value}
        highest_location_pair[0]
    end
end