require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jonny = Follower.new("Jonny", 30, "Don't eat too much cake!")
steve = Follower.new("Steve", 16, "Oh, geez!")
karen = Follower.new("Karen", 97, "My name sure is Karen! ;)")
david = Follower.new("David Stoll", 29, "I sure am Dave!")
jordan = Follower.new("Jordan", 30, "Don't eat too much cake!")
rick = Follower.new("Rick", 16, "Oh, geez!")
beth = Follower.new("Beth", 97, "My name sure is Beth! ;)")
amanda = Follower.new("Amanda", 29, "I sure am Amanda!")
terry = Follower.new("Terry", 30, "Don't eat too much cake!")
cheryl = Follower.new("Cheryl", 16, "Oh, geez!")
plop = Follower.new("Plop", 97, "My name sure is Plop! ;)")
mikey = Follower.new("Mikey", 29, "I sure am Mikey!")

football_guys = Cult.new("The Football Guys", "Texas", 1901, "Football! (The American kind)." )
rollerbladers = Cult.new("Rollerbladers", "LA", 1983, "Whooosh! Let's blade?")
ballers = Cult.new("The Ballers", "Seattle", 2019, "Ballin'!")
bed_wetters = Cult.new("Bed Wetters", "Seattle", 2019, "Not ashamed!!")

# football_guys.recruit_follower(steve)
# rollerbladers.recruit_follower(jonny)
# rollerbladers.recruit_follower(steve)
# karens.recruit_follower(karen)
# bed_wetters.recruit_follower(david)

# football_guys.recruit_follower(jordan)
# football_guys.recruit_follower(cheryl)
# football_guys.recruit_follower(amanda)
# football_guys.recruit_follower(amanda)
# football_guys.recruit_follower(amanda)
# football_guys.recruit_follower(steve)
# football_guys.recruit_follower(jordan)
# football_guys.recruit_follower(jordan)
# football_guys.recruit_follower(steve)
# football_guys.recruit_follower(jordan)
# football_guys.recruit_follower(jordan)

bloodoath1 = BloodOath.new( rollerbladers, steve, "2019-02-03")
bloodoath2 = BloodOath.new( football_guys, karen, "2019-02-02")
bloodoath3 = BloodOath.new( ballers, steve, "2019-02-01")
bloodoath4 = BloodOath.new( bed_wetters, jonny, "2019-01-03")
bloodoath5 = BloodOath.new( rollerbladers, amanda, "2019-12-03")
bloodoath6 = BloodOath.new( rollerbladers, plop, "2019-02-03")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
