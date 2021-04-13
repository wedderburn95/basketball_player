class CLI

    def start
        puts "Welcome! Would you like to see some basketball teams? What is your name?"
        API.get_teams
        # API.get_players
        # user_input
        input = user_input
        greet(input)

    end

    def greet(name)
        puts "Greetings #{name}! enter Y to see a list of team names enter exit to exit"         
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
            goodbye
        else invalid  == "invalid"  #exit selection
            puts "Please select one of the above options to continue"  
                   

            # invalid
        end
        
    end

    def team_name

        Basketball.all.each.with_index(1) do |t, i|
            # puts "uniq() method form : #{Basketball.all.uniq()}"
            # binding.pry
            puts "#{i}. #{t.name}" 
        end   
        puts "Enter team name to see the city"
        basketball = user_input
        team_info(basketball)
        
    end

    def city_name
        Basketball.all.each do |c|
            if c.city == basketball
            puts "#{c.city}"
            end
        end

    end

    def conference
        Basketball.all.each do |con|
            if con.conference == basketball
            puts "#{con.conference}"
            end
        end
    end

    def division
        Basketball.all.each do |d|
            if d.division == basketball
            puts "#{d.division}"
            end
        end
    end


    def team_info(basketball)
        # puts basketball
        # basketball = ["Kevin Durant", "Steven Curry", "Kawhi Leonard"]
        # # player = Player.all
        Basketball.all.each do |p| #Looping through all of the basketball hash per line
            
            # puts "#{i}. #{p.name}"
            if p.name == basketball
                puts " The #{p.name} are located in the city of #{p.city}."
                puts " The #{p.name} are in the #{p.conference + "ern"} conference."
                puts " The #{p.name} are in the #{p.division} division."
            end
            

        end
        # puts "Enter player to see details about your favorite player"
        # details = user_input
        # player_detail(details)
        #print_team
        
    end

    def player_detail(details)
        puts "#{details}"
        # end
        #print_player
        menu

    end

    def goodbye
        puts "Thank you for visiting have a great day!"
    end

    def invalid
        puts "Please chose one of the options or the sky will fall!"
        menu
    end

end