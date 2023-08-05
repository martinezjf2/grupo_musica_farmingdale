class MembersController < ApplicationController

    def index     
    end
    
    def contact
    end

    def about
    end
    
    def virtus
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

    # Create Partials for these two
    # def familiar
    # end

    # def guadalupanos
    # end

    def about_parish
    end

    def stkilian_new_member
    end




end
