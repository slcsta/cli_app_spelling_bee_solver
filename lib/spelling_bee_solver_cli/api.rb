class API
    
    def self.get_data(center_letter, all_letters)

        #response = RestClient.get("https://wordsapiv1.p.rapidapi.com/words/?letterPattern=(?=.*w)(^[wordily]{4,}$)")
        url = URI("https://wordsapiv1.p.rapidapi.com/words/?letterPattern=(?=.*#{center_letter})(^[#{all_letters}]{4,}$)")


        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = ENV['WORDSAPI_KEY']
        request["x-rapidapi-host"] = 'wordsapiv1.p.rapidapi.com'

        response = http.request(request)
        puts response.read_body
        words_array = JSON.parse(response.read_body)["results"]["data"]
        words_array.each do |word|
            Words.new(word)
        end
    end

    def self.get_definition(word)
        url = URI("https://wordsapiv1.p.rapidapi.com/words/#{word}/definitions")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = ENV['WORDSAPI_KEY']
        request["x-rapidapi-host"] = 'wordsapiv1.p.rapidapi.com'

        response = http.request(request)
        puts response.read_body
        words_detail = JSON.parse(response.read_body)["definitions"]
        binding.pry
        words_detail.each do |definition|
            Words.new(definition)
       end
    end

end