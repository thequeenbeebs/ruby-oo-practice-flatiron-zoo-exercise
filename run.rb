require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


Zoo.new("Houston Zoo", "Houston")
Zoo.new("Bronx Zoo", "New York City")
Zoo.new("San Diego Zoo", "San Diego")

Animal.new("Jack", 5, "cat")
Animal.new("Sheldon", 7, "cat")
Animal.new("Abby", 40, "dog")


binding.pry
puts "done"
