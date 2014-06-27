class SitesController < ApplicationController
  def index
    @clubs = Club.all
    @events = Event.all
  end

  def club

    @club = Club.find(params[:id])
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
end
