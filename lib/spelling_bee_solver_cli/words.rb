class Words

    attr_accessor :word, :definition
    
    @@all = []

    def initialize(word)
        @word = word
        # @words_array = 
        @definition = definition
        save
    end


    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_selection(words_word)
        self.all.detect do |words|
            words.word == words_word
            binding.pry
        end
    end
end 