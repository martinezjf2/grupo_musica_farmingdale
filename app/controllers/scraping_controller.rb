require 'net/http'

class ScrapingController < ApplicationController

    def dailyword
        url = URI.parse('https://bible.usccb.org/es/lectura-diaria-biblia')
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true if url.scheme == 'https'

        response = http.get(url.path)

        if response.code == '200'
            html_content = response.body
            doc = Nokogiri::HTML(html_content)
            @current_date = doc.css('time')[0].content
            @evan_title = doc.css('.name')[3].content
            @evan_verse = doc.css('.address')[3].content
            @body = doc.css('.content-body')[3].content

            render 'members/dailyword'
        
        else
            render plain: "Error: #{response.code} #{response.message}"
        end
    end
end
