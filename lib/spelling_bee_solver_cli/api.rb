class API
    def self.get_data
        response = RestClient.get("https://www.dictionaryapi.com/api/v3/references/sd4/json/test?key=71fb414c-9813-4244-8783-c3ab6da37a15")
        words_array = JSON.parse(response)["results"]
        words_array.each do |word|
        Words.new(words)
    end

end