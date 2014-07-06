class SitesController < ApplicationController
before_action :authenticate_admin!, only: :dashboard

  def index

    @clubs = Club.order('clubs.name ASC').paginate(:page => params[:page], :per_page => 15)
    @events = Event.all
  end

  def club

    @club = Club.friendly.find(params[:id])
    @events = @club.events.all
    @hash = Gmaps4rails.build_markers(@club) do |club, marker|
      marker.lat club.latitude
      marker.lng club.longitude
    end

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
