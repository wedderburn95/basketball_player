class CLI

    def start
        puts "Welcome! Would you like to see some basketball teams? What is your name?"
        API.get_data
        # user_input
        input = user_input
        greet(input)

    end

    def greet(name)
        puts "Greetings #{name}! enter y to see team names" 
        menu
    end

    def user_input
        gets.strip #to get rid of the white space on either side
    end

    def menu
        selection = user_input
        if selection == "y"
       team_name
       
        elsif selection == "exit"
            puts "Have a great day"
        else            #exit selection            

            invalid(invalid)
        end
        
    end

    def team_name
        teams = ["Brooklyn Nets", "Golden State Warriors", "Los Angeles Clippers"]
        # teams = Team.all
        teams.each.with_index(1) do |t, i|
            puts "#{i}. #{t}"
        end   
        puts "Enter team name to see the players"
        players = user_input
        team_player(players)
    end


    def team_player(players)
        puts players
        players = ["Kevin Durant", "Steven Curry", "Kawhi Leonard"]
        # # player = Player.all
        players.each.with_index(1) do |p, i|
            puts "#{i}. #{p}"
        end
        puts "Enter player to see details about your favorite player"
        details = user_input
        player_detail(details)
        #print_team
        
    end

    def player_detail(details)
        puts "#{details}"
        # Kevin Durant = {"PF, 50% shooting, 43% 3 pointers"}
        # Steven Curry = {"SG, 65% shooting, 55% 3 pointers"}
        # Kawhi Leonard = {"G, 45% shooting, 35% 3 pointers"}
        # details.each.with_index(1) do |d, key|
        #     puts "#{key}. #{d}"
        # end
        #print_player

    end

    def goodbye
        puts "Thank you for visiting have a great day!"
    end

    def invalid
        puts "Please chose one of the options or the sky will fall!"
        menu
    end

    # def print_team
    #     team = [team]
    #     team.each.with_index do |team, index|
    #         puts "#{index}, #{team}"
    #     end
    # end

    # def print_player
    #     player =[]
    #     player.each.with_index(1) do |player, index|
    #         puts "#{index}, #{player}"
            #selection = user_input
    #     end
    # end

end