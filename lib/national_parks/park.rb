class Park

    attr_accessor :name, :type, :location, :description

    @@all = []
    
    def initialize(type, name, location, description)
        @type = type 
        @name = name
        @location = location
        @description = description
        @@all << self
    end 

    def self.all
        @@all
    end
end 