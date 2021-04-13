require "pry"

class API
    def self.get_teams
        response = RestClient.get("https://www.balldontlie.io/api/v1/teams/")
        basketball_array = JSON.parse(response.body)["data"]
    
        basketball_array.each do |b| #stores a team into "b" value
            # binding.pry
            hash = {id: b["id"], name: b["name"], city: b["city"], conference: b["conference"], division: b["division"]}
        Basketball.new(hash) 
        # puts response.body    
        end
           
    end

    # def self.get_players
    #     response = RestClient.get("https://www.balldontlie.io/api/v1/players")
    #     player_array = JSON.parse(response.body)["data"]
    #     # binding.pry
    
    #     player_array.each do |b|
    #         p Player.new(b["id"], b["first_name"] + " " + b["last_name"], b["team"]["name"]) 
    #     end
    #     #     hash = {id: b["id"], name: b["name"]}
    #     # Player.new(hash) 

    # end    
end

