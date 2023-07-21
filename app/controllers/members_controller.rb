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
        @document = Document.all.first
    end

    # Create Partials for these two
    # def familiar
    # end

    # def guadalupanos
    # end



end
