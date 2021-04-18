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
            \nEnter all seven letters:"
            all_letters = user_input.downcase
            if all_letters.length > 7 || all_letters.length < 7
                invalid_letter_length
            else  
                puts "\nGreat, now please enter just the center letter:"
                center_letter = user_input.downcase
                if center_letter.length > 1 || center_letter.length < 1
                    invalid_letter_length
                else
                    puts "\n*Note: Our list includes obscure words that Spelling Bee may not recognize."
                    sleep(3)
                    puts "🐝 Here are today's solutions 🐝 "
                    API.get_data(center_letter, all_letters)
                    if Words.all.length != 0
                        print_words
                    else
                        invalid
                    end
                end
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

    def invalid_letter_length
        puts "\nIt looks like you didn't enter the correct number of letters. Enter 'Y' to try again or 'N' to exit."
        menu
    end
    
    def print_words
        Words.all.each.with_index(1) do |words, index|
            puts "#{index}. #{words.word}"
        end
        select_word
    end   
    
    def select_word
        puts "\nTo look up a definition enter a word from the list. Enter 'N' to exit."
        word = user_input
        API.get_definition(word)
        if word == "N"
            goodbye
        elsif word == "Y"
            print_words
        elsif Definitions.all.length != 0
            print_definitions(word)
            Definitions.all.clear
            select_word
        else
            puts "\nNo definition available. Please try again."
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