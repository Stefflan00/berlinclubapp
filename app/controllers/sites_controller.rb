class SitesController < ApplicationController
before_action :authenticate_admin!, only: :dashboard

  def index

    @clubs = Club.order('clubs.name ASC').paginate(:page => params[:page], :per_page => 15)
    @events = Event.all
  end

  def club

    @club = Club.friendly.find(params[:id])
    @events = @club.events.all
    
  end

  def event
    @event = Event.find(params[:id])
  end

  def clubs
    @clubs = Club.all
  end

  def events
    @events = Event.all
  end

  def dashboard

  end

end
