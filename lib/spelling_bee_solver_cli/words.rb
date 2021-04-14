class Words

    attr_accessor :word, :word_text, :definition 
    
    @@all = []

    # (mass assignment pass in as a giant hash)

    def initialize(word_hash)
        word_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
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