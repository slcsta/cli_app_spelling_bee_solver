class CLI 
    # method that gets it started and greets user
    def start
        puts "Welcome to the Spelling Bee Solver. What is your name?"
        API.get_data
        input = user_input
        greet(input)
    end

    # method that gets a users input
    def user_input
        gets.strip
    end

    def greet(name)
        puts "Greetings, #{name}. Let's begin! Would you like to solve today's Spelling Bee puzzle? If yes, enter 'y' to solve the puzzle, if no, enter 'exit'."
        menu
    end

    def menu
        selection = user_input
        if selection == "y"
            #puts "Terrific, please go to the New York Times Spelling Bee at https://www.nytimes.com/puzzles/spelling-bee and enter all of the day's letters."
            #all_letters = user_input
            #puts "Great, now please enter just the center letter"
            #center_letter = user_input 
            print_words # prints list of the days solution
            menu     # calling method within intself is recursion. Will return to the beginning and wait for us to enter info again.
        elsif selection == "exit"
            # exit application
            goodbye
        else
            #enter invalid message then prompt the user to keep choosing
            invalid
        end
    end
    
    def goodbye
        puts "Thank you for playing. Come back soon!"
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
        puts "Plese enter a word from the list to learn its definition."
        selection = user_input    
        word_definition(selection)
    end

    def word_definition(word)
        puts "#{word}"
        menu
    end

    #user can stay and continue to enter words to retrieve definitions for as long as they choose or enter exit to end the program

end