class PagesController < ApplicationController
  def about
  end

  def services
    @services = Service.all
  end

  def contact
  end
end
