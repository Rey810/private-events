class EventsController < ApplicationController

    def new
        @event = current_user.created_events.new
    end

    def create 
        @event = current_user.created_events.build(event_params)
        if @event.save
            redirect_to @event 
        else
            render 'new'
        end
    end
    
    def show
        @event = current_user.created_events.find(params[:id])
        @attendees = current_user.created_events
    end

    def index
        @all_events = Event.all
    end

    private

        def event_params
            params.require(:event).permit(:title)
        end

end
