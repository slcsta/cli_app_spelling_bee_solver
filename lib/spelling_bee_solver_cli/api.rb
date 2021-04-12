class API
    def self.get_data
        
        request["x-rapidapi-host"] = 'wordsapiv1.p.rapidapi.com'
        request["x-rapid-key"] = ENV['WORDS_API_KEY']
        # response = RestClient.get "https://wordsapiv1.p.key.com/words/?letterPattern=(?=.*e)(^[eginpux]{4,}$)" 
        
        binding.pry
        # words_array = JSON.parse(response)[""]
        # words_array.each do |word|
        #    Words.new(words)
    end

end