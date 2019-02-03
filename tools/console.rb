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
beth = Follower.new("Beth", 97, "My name sure is Karen! ;)")
amanda = Follower.new("Amanda", 29, "I sure am Dave!")
terry = Follower.new("Terry", 30, "Don't eat too much cake!")
cheryl = Follower.new("Cheryl", 16, "Oh, geez!")
plop = Follower.new("Plop", 97, "My name sure is Karen! ;)")
mikey = Follower.new("Mikey", 29, "I sure am Dave!")

football_guys = Cult.new("The Football Guys", "Texas", 1901, "Football! (The American kind)." )
rollerbladers = Cult.new("Rollerbladers", "LA", 1983, "Whooosh! Let's blade?")
karens = Cult.new("The Karens", "Seattle", 2019, "Only ppl name Karen, plz!")
david_stolls = Cult.new("Daveid Stolls", "Seattle", 2019, "It's only me!!")

football_guys.recruit_follower(steve)
rollerbladers.recruit_follower(jonny)
rollerbladers.recruit_follower(steve)
karens.recruit_follower(karen)
david_stolls.recruit_follower(david)

football_guys.recruit_follower(jordan)
football_guys.recruit_follower(cheryl)
football_guys.recruit_follower(amanda)
football_guys.recruit_follower(amanda)
football_guys.recruit_follower(amanda)
football_guys.recruit_follower(steve)
football_guys.recruit_follower(jordan)
football_guys.recruit_follower(jordan)
football_guys.recruit_follower(steve)
football_guys.recruit_follower(jordan)
football_guys.recruit_follower(jordan)

bloodoath1 = BloodOath.new("2019-01-01", rollerbladers, steve)
bloodoath2 = BloodOath.new("2019-01-01", football_guys, karen)
bloodoath3 = BloodOath.new("2019-01-01", karens, steve)
bloodoath4 = BloodOath.new("2019-01-01", david_stolls, jonny)
bloodoath5 = BloodOath.new("2019-01-01", rollerbladers, steve)
bloodoath6 = BloodOath.new("2019-01-01", rollerbladers, steve)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
