class HomeController < ApplicationController
  def index
    @services = Service.where(show_homepage: true)
  end
end
