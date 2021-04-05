class CLI

    def start
        puts "Welcome! Would you like to see some basketball teams? What is your name?"
        # user_input
        input = user_input
        greet(input)

    end

    def greet(name)
        puts "Greetings #{name}!
        which team would you like to see?"
    end

    def user_input
        gets.strip #to get rid of the white space on either side
    end

    def menu
        selection = user_input
        if selection == "team_name"
        #enter team go to team list
        elsif
        #enter player go to player list
    end
end