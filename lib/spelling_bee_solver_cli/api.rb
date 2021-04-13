class API
    
    def self.get_data

        #response = RestClient.get("https://wordsapiv1.p.rapidapi.com/words/?letterPattern=(?=.*e)(^[eginpux]{4,}$)")
        url = URI("https://wordsapiv1.p.rapidapi.com/words/?letterPattern=(?=.*w)(^[wordily]{4,}$)")


        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = ENV['WORDSAPI_KEY']
        request["x-rapidapi-host"] = 'wordsapiv1.p.rapidapi.com'

        response = http.request(request)
        puts response.read_body
        words_array = JSON.parse(response.read_body)
        words_array.each do |word|
            Words.new(word)
        end
    end

    def letter_pattern_from_API
        

        # json = self.get_data(url)

        # convert_json_to_ruby(json)
    end


        
        #request["x-rapidapi-host"] = 'wordsapiv1.p.rapidapi.com'
        #request["x-rapid-key"] = ENV['WORDS_API_KEY']
        #response = RestClient.get "https://wordsapiv1.p.key.com/words/?letterPattern=(?=.*e)(^[eginpux]{4,}$)" 
        
        
        # words_array = JSON.parse(response)[""]
        # words_array.each do |word|
        #    Words.new(words)

end