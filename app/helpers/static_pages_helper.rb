module StaticPagesHelper
    
        def gettraffic()
        require 'net/http'
        
        
        t = Time.new + 480*60
        t2 = t.to_s.gsub(" +0000","").gsub(" ","T").gsub(":","%3A")
        uri = URI.parse("https://api.data.gov.sg/v1/transport/traffic-images?date_time=" + t2)
        request = Net::HTTP::Get.new(uri)
        request["Api-Key"] = "FY6fOSOu5UJupg3kNZbyrqPKHjymewf4"
        req_options = {
             use_ssl: uri.scheme == "https",
          }
        
        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
            http.request(request)
        end
        return JSON.parse(response.body)
    end
    

    def getdatatraffic(jsresponse, cameraid)
        return jsresponse['items'][0]['cameras'].find {|h1| h1['camera_id'] == cameraid.to_s}["image"]
        
    end
    
end
