class Basketball
    attr_accessor :name, :position, :team
    @@all = []

    def initialize(basketball_hash)
        basketball_hash.each do |key, value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end