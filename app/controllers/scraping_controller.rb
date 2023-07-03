require 'net/http'
require 'dotenv/load'
# added comment

class ScrapingController < ApplicationController

    def dailyword
        url = URI.parse(ENV['API_WORD_OF_DAY'])
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
            @listen = doc.css('.listen')[0]['href']

            render 'members/dailyword'
        
        else
            render plain: "Error: #{response.code} #{response.message}"
        end
    end


    def weekly_bulletin
        url = URI.parse(ENV['API_BULLETIN'])
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true if url.scheme == 'https'

        response = http.get(url.path)

        if response.code == '200'
            html_content = response.body
            doc = Nokogiri::HTML(html_content)
            
            @name = doc.css('.bulletinName')[0].content
            @href = doc.css('.bulletinName a')[0]['href']
            @img_src = doc.css('.bulletinName picture img')[0]['src']
            @alt_picture = doc.css('.bulletinName picture img')[0]['alt']
            @source = doc.css('.bulletinName picture source')[0]['srcset']

            render 'members/weekly_bulletin'
        
        else
            render plain: "Error: #{response.code} #{response.message}"
        end
        
    end

end
