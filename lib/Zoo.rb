class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        self.class.all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo ==self
        end
    end

    def animal_species
        species = []
        self.animals.each do |animal|
            species << animal.species
        end
        species.uniq
    end

    def find_by_species(species)
        self.animals.select do |animal|
            animal.species == species
        end
    end

    def animal_nicknames
        nicknames = []
        self.animals.each do |animal|
            nicknames << animal.nickname
        end
        nicknames
    end

    def self.find_by_location(location)
        self.all.select do |zoo|
            zoo.location == location
        end
    end

end
