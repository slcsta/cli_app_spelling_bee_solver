class CLI 

    def start
        puts "\nWelcome to Spelling Bee Solver! What is your name?"
        input = user_input
        greet(input)
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "\nGreetings, #{name}. Let's begin! Would you like to solve today's puzzle? \nEnter 'y' for yes or 'exit' for no."
        menu
    end

    def menu
        selection = user_input
        if selection == "y"
            puts "\nTerrific! Let's go to the New York Times Spelling Bee and retrieve today's letters. \nPlease enter all seven letters."
            all_letters = user_input.downcase
            puts "\nGreat, now please enter just the center letter."
            center_letter = user_input.downcase
            puts "\nNote that our list includes obscure words that Spelling Bee may not recognize."
            puts "\n🐝 Here are today's solutions 🐝 "
            API.get_data(center_letter, all_letters)
            print_words
        elsif selection == "exit"
            goodbye
        else
            invalid
        end
    end
    
    def goodbye
        puts "\nThank you for playing. Come back soon!"
    end
    
    def invalid
        puts "\nInvalid entry. Please try again."
        menu
    end
    
    def print_words
        Words.all.each.with_index(1) do |word, index|
            puts "#{index}. #{word.word}"
        end
        select_word
    end    

    def select_word
        puts "\nEnter a word from the list to look up its definition. Enter 'exit' to quit."
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