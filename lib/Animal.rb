class Animal
    attr_reader :nickname, :weight, :species
    attr_accessor :zoo

    @@all = []

    def initialize(nickname, weight, species)
        @nickname = nickname
        @weight = weight
        @species = species
        self.class.all << self
    end 

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species == species
        end
    end

end
