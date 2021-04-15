class CLI 

    def start
        puts "Welcome to the Spelling Bee Solver. What is your name?"
        input = user_input
        greet(input)
    end

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
            puts "Terrific, please go to the New York Times Spelling Bee at https://www.nytimes.com/puzzles/spelling-bee and enter all of the day's letters."
            all_letters = user_input
            puts "Great, now please enter just the center letter"
            center_letter = user_input
            API.get_data(center_letter, all_letters)
            print_words #prints word list of solutions
            menu     # calling method within intself is recursion. Will return to the beginning and wait for us to enter info again.
        elsif selection == "exit"
            goodbye
        else
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
        Words.all.each.with_index(1) do |word, index|
            puts "#{index}. #{word.word}"
        end
        select_word
    end    

    def select_word
        puts "Plese enter a word from the list to search for its definition."
        word = user_input
        API.get_definition(word)
        print_definitions
        #return to look up another word again and again or user enters exit to exit program    
        #word_definition(selection)
    end

    def print_definitions
        Words.all.each.with_index(1) do |definition, index|
            puts "#{index}. #{definition}"
        end
        select_word
    end
end