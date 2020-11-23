require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


houston = Zoo.new("Houston Zoo", "Houston")
bronx = Zoo.new("Bronx Zoo", "New York City")
sd = Zoo.new("San Diego Zoo", "San Diego")

jack = Animal.new("Jack", 5, "cat")
sheldon = Animal.new("Sheldon", 7, "cat")
abby = Animal.new("Abby", 40, "dog")

jack.zoo = houston
sheldon.zoo = houston
abby.zoo = houston

binding.pry
puts "done"
