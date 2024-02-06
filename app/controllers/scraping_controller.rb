require 'net/http'

class ScrapingController < ApplicationController

    def lectura
        url = URI.parse(ENV['DAILY_WORD'])
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

            render 'members/lectura'
        
        else
            render plain: "Error: #{response.code} #{response.message}"
        end
    end

    def daily_gospel
        url = URI.parse(ENV['GOSPEL'])
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

            render 'members/daily_gospel'
        
        else
            render plain: "Error: #{response.code} #{response.message}"
        end
    end



    def weekly_bulletin
        url = URI.parse(ENV['BULLETIN'])
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



# 1. Make a Webpage for Alcoholicos Aniomos and when they have meetings
# 2. Make a webpage for Hospitalidad y Lectores, and when they have meeting a to join the group.
# 3. Have a partial on the homepage that will give the most current events that will happen soon so users can see what to join and to see what grouops to join.
# 4. Make a partial about the Eucharistic Adoration that occurs within the chapel.
# 5. Grupo Juvenil: Have a video that explains what is the purpose of what is a "Angel de Dios". Post on their homepage.
# 6. Join the parishs' picnic and maybe ask the Pastor if the Spanish Community can join with typical food such as atol or elote loco.
