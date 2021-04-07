class Words

    #(unsure if I want id or stems here to get the actual word)
    attr_accessor :id, :stems, :shortdef, :name
    
    @@all = []

    # (mass assignment pass in as a giant hash)

    def initialize(words_hash)
        words_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
            save
        end
    end


    def save
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.find_by_selection(words_name)
    #     self.all.find do |word|
    #         words.name == starship_name
    #     end
    # end
end 