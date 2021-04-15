class CLI

    def start
        puts "Welcome! Would you like to see some basketball teams? What is your name?"
        API.get_teams
        input = user_input
        greet(input)

    end

    def greet(name)
        puts "Welcome #{name}! enter Y to see a list of team names enter exit to exit"         
        menu
    end

    def user_input
        gets.strip #to get rid of the white space on either side
    end

    def menu
          selection = user_input        
        if selection == "y"
            print_team
            
            
        elsif selection == "exit"
            puts "Have a great day"
            goodbye #exit selection
        else
            invalid # choose from the list
                
        end
    end

    def print_team
        Basketball.all.each.with_index(1) do |t, i|
            puts "#{i}. #{t.name}"
        end
        team_name
    end

    def team_name
        puts "Enter team name to see the city"
        selection = user_input
        if Basketball.find_by_selection(selection)
            basketball = Basketball.find_by_selection(selection)
        else
            basketball = selection
        end  
        team_info(basketball) 
    end

    def team_info(basketball) #This is now the object passed in as an argument
        # binding.pry
        if basketball == "exit"
            goodbye
        elsif basketball.class == Basketball
            puts "Name: #{basketball.name}"
            puts "City: #{basketball.city}"
            puts "Conference: #{basketball.conference}"
            puts "Division: #{basketball.division}"
            puts "enter y to see more teams or exit to exit"
            menu
        else
            invalid               
        end
    end

    def player_detail(details)
        puts "#{details}"
        menu

    end

    def goodbye
        puts "Thank you for visiting have a great day!"
    end

    def invalid
        puts "oops please choose Y to see a list of teams or exit to exit"
        menu
    end

end