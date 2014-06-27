class EventsController < ApplicationController


def create
  @club = Club.find(params[:club_id])
  @event = @club.events.create(event_params)
  redirect_to club_path(@club)

end

private

def event_params
  params.require(:event).permit(:name, :description, :date)
end

end
