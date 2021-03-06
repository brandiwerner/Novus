class EventsController < ApplicationController
 def index
 	@events = Event.all
 end	

  def show
  	@event = Event.find(params[:id])
  end

  def new
  	@event = Event.new
  end	

  def create
  	@event = Event.new(event_params)
    
  	if(@event.save)
      flash[:success] = "New Event Created!"
  		redirect_to @event
  	else
  		render 'new'
     end 	
  end

  def edit
  	@event = Event.find(params[:id])
  end
  
  def update
  	@event = Event.find(params[:id])

  	if(@event.update(event_params))
  		redirect_to @event
      flash[:success] = "Edit Saved!"
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@event = Event.find(params[:id])
  	@event.destroy
    flash[:success] = "Event Deleted"

  	redirect_to index_path
  end

  private def event_params
  	params.require(:event).permit(:title, :body, :time, :date, :location)
  end
end
