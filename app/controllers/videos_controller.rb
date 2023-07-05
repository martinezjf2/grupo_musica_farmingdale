class VideosController < ApplicationController
    before_action :require_login, only: [:new, :edit, :update, :destroy]


    def index
        @videos = Video.all.sort_by {|video| video.id}.reverse
    end

    def new
        @video = Video.new
    end

    def edit
        @video = Video.find_by(id: params[:id])
    end

    def update
        @video = Video.find_by(id: params[:id])
        if @video.update(video_params)
            redirect_to videos_path, success: "Video editado con éxito"
        else
            redirect_to new_video_path, danger: "El video NO se edito con éxito"
        end
    end

    def create
        @video = Video.new(video_params)
        if @video.save
            redirect_to videos_path, success: "Video añadido con éxito"
        else
            redirect_to new_video_path, danger: "El video NO se agregó con éxito"
        end
    end

    def destroy
        @video = Video.find_by(id: params[:id])
        @video.destroy
        redirect_to videos_path, success: "El Video se ah eliminado con exito."
    end

    
    private

    def video_params
        params.require(:video).permit(:name, :link_to_video, :date_created)
    end
    


    
end
