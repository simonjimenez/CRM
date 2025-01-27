class ContactsController < ApplicationController
  before_action :set_contact, only: ["show", "edit", "update", "destroy"]
  def index
    @contacts = Contact.all
    @interested = Contact.where(status:"interested").count
    @prospect = Contact.where(status:"prospect").count
    @client  = Contact.where(status:"client").count
  end

  def show
    @conversation = Conversation.new
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user_email = current_user.email
    if @contact.save
      redirect_to contacts_path
    else
      render :new

    end


  end

  def edit;end

  def update

    if @contact.update(contact_params)
      redirect_to contacts_path
    else
      render :edit

    end

  end

  def destroy;end

  private
  def contact_params
    params.require(:contact).permit(:email, :name, :number, :status, :date)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
