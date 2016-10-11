require 'uri'
class ContactsController < ApplicationController

  def new
  	@contact = Contact.new(contact_params)
		if @contact.save
      flash[:success] = "Thanks for submitting you message we will get back you shortly"
      redirect_to contact_path
		else
      flash[:error] = "That todo item could not be saved."
      redirect_to contact_path
		end
  end

  def contact_params
    params.require(:contact).permit(:email, :message, :name, :phone, :subject)
  end
end
