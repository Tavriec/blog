class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end
  
  def new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.email = current_user.email
    if @contact.valid?
      @contact.save
    else
      render action: 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
  
end
