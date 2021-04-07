class CLI

    def start
        puts "Welcome! Would you like to see some basketball teams? What is your name?"
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
        else            #exit selection            

            #invalid message
        end
        
    end

    def team_name
        teams = ["Brooklyn Nets", "Golden State Warriors", "Los Angeles Clippers", "Los Angeles Lakers", "Miami Heat", "Milwaukee Bucks"]
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
        players = ["Kevin Durant", "Steven Curry", "Kawhi Leonard", "Lebron James", "Jimmy Butler", "Giannis Antetokounmpo"]
        # # player = Player.all
        players.each.with_index(1) do |p, i|
            puts "#{i}. #{p}"
        end
    end

    def goodbye
        puts "Thank you for visiting have a great day!"
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
    #     end
    # end

end