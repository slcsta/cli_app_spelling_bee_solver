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
        puts "\nGreetings, #{name}. Let's begin! Would you like to solve today's puzzle? \nEnter 'Y' for yes or 'N' to exit."
        menu
    end

    def menu
        selection = user_input
        if selection == "Y"
            puts "\nTerrific! Let's go to the New York Times Spelling Bee: https://www.nytimes.com/puzzles/spelling-bee and retrieve today's letters. 
            Please enter all seven letters."
            all_letters = user_input.downcase
            puts "\nGreat, now please enter just the center letter."
            center_letter = user_input.downcase
            puts "\nNote that our list includes obscure words that Spelling Bee may not recognize."
            puts "\n🐝 Here are today's solutions 🐝 "
            API.get_data(center_letter, all_letters)
            if Words.all.length != 0
                print_words
            else
                invalid
            end
        
        elsif selection == "N"
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
        Words.all.each.with_index(1) do |words, index|
            puts "#{index}. #{words.word}"
        end
        select_word
    end   
    
    def select_word
        puts "\nTo look up a definition enter a word from the list. Enter 'e' to exit."
        word = user_input
        API.get_definition(word)
        if word == "N"
            goodbye
        elsif word == "Y"
            print_words
        # elsif word == invalid
        #     select_word
        elsif Definitions.all.length != 0
            print_definitions(word)
            Definitions.all.clear
            select_word
        else
            puts "no def available, please try again."
            sleep(1)
            select_word
        end
    end
    
    def print_definitions(word)
        Definitions.all.each.with_index(1) do |definitions, index|
            puts "#{index}. #{word}: #{definitions.definition}"
        end
    end
end