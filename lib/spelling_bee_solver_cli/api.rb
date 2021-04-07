class API
    def self.get_data
        response = RestClient.get("")
        #binding.pry
        # words_array = JSON.parse(response)[""]
        # words_array.each do |word|
        #    Words.new(words)
        end
    end

end