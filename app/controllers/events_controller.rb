class EventsController < ApplicationController
    before_action :require_login, only: [:new, :edit, :update, :destroy]

    def calendar

    end

    def index
        @events = Event.all
    end

    def show
        @event = Event.find_by(id: params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to event_path(@event), success: "Evento añadido con éxito"
        else
            redirect_to new_event_path, danger: "El evento NO se agregó con éxito"
        end
    end
    
    def edit
        @event = Event.find_by(id: params[:id])
    end

    def update
        @event = Event.find(params[:id])
        if @event.update(event_params)
            redirect_to event_path(@event), success: "El evento se editado con éxito"
        else
            redirect_to edit_event_path(@event), danger: "El evento NO se edito con éxito"
        end

    end

    def destroy
        @event = Event.find_by(id: params[:id])
        @event.destroy
        redirect_to events_path, success: "El Evento se ah eliminado con exito."
    end

    private

    def event_params
        params.require(:event).permit(:event_name, :event_date, :event_start_time, :event_end_time, :location, :address, :city, :phone_number, :zip, :image, :description)
    end
    


end
