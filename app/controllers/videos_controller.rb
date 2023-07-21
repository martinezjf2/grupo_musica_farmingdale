class VideosController < ApplicationController
    before_action :require_login, only: [:new, :edit, :update, :destroy]


    def index
        videos_per_page = 6
        page = params[:page].to_i || 2
        offset = [(page - 1) * videos_per_page, 0].max
      
        if params[:search].present?
          total_videos = Video.where('lower(name) LIKE ?', "%#{params[:search].downcase}%").count
          @videos = Video.where('lower(name) LIKE ?', "%#{params[:search].downcase}%")
                         .order(date_created: :desc)
                         .offset(offset).limit(videos_per_page)
        else
          total_videos = Video.count
          @videos = Video.all.order(date_created: :desc)
                         .offset(offset).limit(videos_per_page)
        end
      
        @total_pages = (total_videos.to_f / videos_per_page).ceil
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
        params.require(:video).permit(:name, :link_to_video, :date_created, :category)
    end
    


    
end
