class Definitions

    attr_accessor :definition, :partsOFspeech
    
    @@all = []

    def initialize(definitions_hash)
        definitions_hash.each do |key, value|
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

    # def self.find_by_selection(definitions_definition)
    #     self.all.detect do |definitions|
    #         definitions.definition == definitions_definition
    #     end
    # end
end 