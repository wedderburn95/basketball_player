require "pry"

class API
    def self.get_teams
        response = RestClient.get("https://www.balldontlie.io/api/v1/teams/")
        basketball_array = JSON.parse(response.body)["data"]    
        basketball_array.each do |b| #stores a team into "b" value
            # binding.pry
            # hash = {id: b["id"], name: b["name"], city: b["city"], conference: b["conference"], division: b["division"]}
        Basketball.new(b)  
        end
           
    end

end

