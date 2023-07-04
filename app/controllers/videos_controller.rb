class VideosController < ApplicationController


    def index
        @videos = Video.all
    end

    # def show
        
    # end

    def new

    end

    def create
    end

    def destroy
        @video = Video.find_by(id: params[:id])
        @video.destroy
        redirect_to videos_path, success: "El Video se ah eliminado con exito."
    end

    

    
end
