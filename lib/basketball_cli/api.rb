require "pry"

class API
    def self.get_data
        response = RestClient.get("https://www.balldontlie.io/api/v1/players")
        basketball_array = JSON.parse(response)["data"]
        basketball_array.each do |basketball|
        # binding.pry
        Basketball.new(basketball)        
        end
        
    end
    
end