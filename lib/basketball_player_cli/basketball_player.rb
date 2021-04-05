class Basketball_player
    attr_accessor :name, :position, :team
    @@all = []

    def initialize(name, position,team)
        @name = name
        @position = position
        @team = team
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end