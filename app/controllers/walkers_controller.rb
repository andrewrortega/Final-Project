class WalkersController < ApplicationController

  def index
    @walkers = Walker.all

    render("walkers/index.html.erb")
  end

  def show
    @walker = Walker.find(params[:id])

    render("walkers/show.html.erb")
  end

end
