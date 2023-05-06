class EventsController < ApplicationController
    def calendar

    end

    def index
        # demonstrate all events
        @events = Event.all
    end

    def new
        # get request to make a new event
        @event = Event.new()
    end

    def create
        # post request to make a new event
        @event = Event.create()
    end
    
    def edit
        # get request to find the event
        @event = Event.find_by(id: params[:id])
    end

    def update
        # patch request to edit the event
        @event = Event.find_by(id: params[:id])
        @event.update()

    end

    def destroy
        # delete request to delete the event
        @event = Event.find_by(id: params[:id])
        @event.destroy
    end

    private

    


end
