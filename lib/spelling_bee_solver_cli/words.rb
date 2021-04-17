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
end 