require 'pry'
class Cult
    @@all = []
    attr_accessor :name, :location, :founding_year, :slogan

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def oaths
        BloodOath.all.select {|oath| oath.cult == self}
    end

    def followers
        self.oaths.map do |oath|
            oath.follower
        end
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower, initiation_date = DateTime.now.strftime("%Y/%m/%d"))
    end

    def cult_population
        self.followers.count
    end

    def self.find_by_name(follower_name)
        follower_oath = BloodOath.all.find {|oath| oath.follower.name == follower_name}
        follower_oath.cult
    end

    def self.find_by_location(location)
        BloodOath.all.select do |oath| 
            if oath.cult.location == location
                oath.cult
            end
        end
    end

    def self.find_by_founding_year(year)
        BloodOath.all.select do |oath|
            if oath.cult.founding_year == year
                oath.cult
            end
        end
    end

    def self.all
        @@all
    end
end