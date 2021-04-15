class Basketball
    attr_accessor :name, :city, :conference, :division
    @@all = []

    def initialize(basketball_hash)
        basketball_hash.each do |key, value| # looping through the value
        self.send("#{key}=", value) if self.respond_to?("#{key}=") #loads the value into the basketball class
        end
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
