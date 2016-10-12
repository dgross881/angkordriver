class PagesController < ApplicationController
  def about
  end

  def services
    binding.pry
    @services = Service.all
  end

  def contact
  end
end
