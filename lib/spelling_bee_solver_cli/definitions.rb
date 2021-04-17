class Definitions

    attr_accessor :definition, :words_detail_array
    
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
end 