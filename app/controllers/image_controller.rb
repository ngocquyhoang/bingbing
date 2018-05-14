class ImageController < ApplicationController
    def index
        @result_data_image_array = {}
        if params[:search_keyword]
            key_word = params[:search_keyword]
            flickAPIKey = '9d521153617867801bcdd3be2db6bd9d'
            imageCount = "50"
            httpRequestUrl = 'https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key='+flickAPIKey+'&text='+key_word+'&per_page='+imageCount+'&nojsoncallback=1&format=json'
            require 'net/http'
            result_data = Net::HTTP.get(URI.parse(httpRequestUrl))
            result_data = JSON.parse(result_data)

            if result_data["stat"] == "ok"
                @result_data_image_array["notice"] = "success"
                @result_data_image_array["data"] = result_data["photos"]["photo"]

                @result_data_image_array["data"].each do |data_el|
                data_el["url"] = "https://farm"+data_el["farm"].to_s+".staticflickr.com/"+data_el["server"]+"/"+data_el["id"]+"_"+data_el["secret"]
            end

            if @result_data_image_array["data"].count == 0
                @result_data_image_array["notice"] = "error"
                @result_data_image_array["data"] = "No data return. Please try again using other keyword"
            end

            else
                @result_data_image_array["notice"] = "error"
                @result_data_image_array["data"] = "Sever error. Please try again in next time"
            end
        end
    end
end
