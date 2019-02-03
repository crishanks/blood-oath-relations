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

football_guys = Cult.new("The Football Guys", "Texas", 1901, "Football! (The American kind)." )
rollerbladers = Cult.new("Rollerbladers", "LA", 1983, "Whooosh! Let's blade?")
karens = Cult.new("The Karens", "NY", 2019, "Only ppl name Karen, plz!")
david_stolls = Cult.new("Daveid Stolls", "Seattle", 2019, "It's only me!!")

football_guys.recruit_follower(steve)
rollerbladers.recruit_follower(jonny)
rollerbladers.recruit_follower(steve)
karens.recruit_follower(karen)
david_stolls.recruit_follower(david)

bloodoath1 = BloodOath.new("2019-01-01")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
