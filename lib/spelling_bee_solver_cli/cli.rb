class CLI 
    
    # first thing we want to add is a greeting
    # method that gets it started

    def start
        puts "Welcome to the Spelling Bee Solver. What is your name?"
        input = user_input
        greet(input)
    end

    # method that gets a users input

    def user_input
        gets.strip
    end

    def greet(name)
        puts "Greetings, #{name}. Let's begin! Would you like to solve today's Spelling Bee puzzle? Enter y to see list, enter n to exit."
        menu
    end

    
    # 3 menu items
        # if user enters y, then ask for user_input - today's puzzle characters
        # if they enter n, then say goodbye and exit program
        # if invalid entry, put invalid message and have them reenter information
        # We want a conditional statement, if, else to play out menu scenario

    def menu
        selection = user_input
        if selection == "y"
            # get input from user again - we want user to enter today's words 
            print_words
            menu     # calling method within intself is recursion. Will return to the beginning and wait for us to enter info again.

        elsif selection == "n"
            # exit application
            goodbye
        
        else
            #enter invalid message and then let them keep choosing
            invalid
        end
    end
    
    
    def goodbye
        puts "Thank you for playing, #{name}. Hope to see you soon!"
    end
    

    def invalid
        puts "Invalid entry. Please try again."
        menu
    end
    
    def print_words
        words = ["word1", "word2", "word3"]
        words.each.with_index(1) do |word, index|
            puts "#{index}. #{word}"
        end
        select_word
    end    

    def select_word
        puts "please enter a word for which you would like to learn the definition."
        selection = user_input    
        word_definition(selection)
    end

    def word_definition(word)
        puts "word definition" # Once I have API etc. this will be the actual definition so I'll interpolate with #{word def}
        menu
    
    end

end