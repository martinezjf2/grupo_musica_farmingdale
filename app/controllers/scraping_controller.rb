require 'net/http'

class ScrapingController < ApplicationController

    def dailyword
        url = URI.parse('https://evangeli.net/evangelio')
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true if url.scheme == 'https'

        response = http.get(url.path)

        if response.code == '200'
            html_content = response.body
            doc = Nokogiri::HTML(html_content)
            
            date = Date.current
            @current_date = date.strftime("%B %e, %Y")
            
            @evan_text = doc.css('.evangeli_text')[0].content
            @evan_comment = doc.css('.comentari_evangeli')[0].content
            @autor_name = doc.css('.autor_name')[0].content
            @evan_thoughts = doc.css('.thoughts_wrapper')[0].content

            render 'members/dailyword'
        
        else
            render plain: "Error: #{response.code} #{response.message}"
        end
    end
end
