class Basketball
    attr_accessor :name, :city, :team, :conference, :division
    @@all = []

    def initialize(basketball_hash)
        basketball_hash.each do |key, value| # looping through the value
        self.send("#{key}=", value) if self.respond_to?("#{key}=") #loads the value into the basketball class
        # if !@@all.include?(value)
        
        # end
        
        end
        # @name = self.name["name"]
        # @team = self.team["team"]
     
        save
    end

    def find_by
    end

    def save
        @@all << self
    end

    def self.all
        @@all.uniq
    end

    def self.find_by_selection(basketball_name)
        self.all.detect do |basketball|
            basketball.name == basketball_name
        end
    end
end

# class Player
#     attr_accessor :name, :team, :position
#     @@all =[]

#     def initialize(id, name, team)
#         @id = id
#         @name = name
#         @team = team
#         # save
#     end

#     def save
#         @@all << self
#     end

#     def self.all
#         @@all.uniq
#     end
# end