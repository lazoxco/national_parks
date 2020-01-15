class Park

    attr_accessor :name, :type, :location, :description

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end
end 