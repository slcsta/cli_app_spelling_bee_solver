class Words

    attr_accessor :word, :definition
    
    @@all = []

    def initialize(word)
        @word = word
            #self.send("#{key}=", value) if self.respond_to?("#{key}=")
        save
    end


    def save
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.find_by_selection(word_text)
    #     self.all.find do |word|
    #         word.text == word_text
    #     end
    # end
end 