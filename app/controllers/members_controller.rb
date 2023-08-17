class MembersController < ApplicationController

    def index     
    end
    
    def contact
    end

    def about
    end
    

    def angeles
    end

    def luz
    end

    def resos
    end

    def misa
    end

    def forms
        @english_document = Document.where(language: 'en').first
        @spanish_document = Document.where(language: 'es').first
    end


    def pastoral_familiar
    end



    def about_parish
    end

    def stkilian_new_member
    end

    def spanish_weekly_bulletin
        @events = Event.all.order(:event_date).limit(4)
    end

    def guadalupano
    end

    def copyright
    end
    



end
