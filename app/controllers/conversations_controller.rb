class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
    @conversation = Conversation.new
  end

  def new
  end

  def create
    @conversation = Conversation.new(conversation_params)
    @conversation.contact_id = params[:contact_id]
    if @conversation.save
      redirect_to contact_path(params[:contact_id])
    else
      render "/contact/show"
    end

  end
  def show
  end

  private

  def conversation_params
    params.require(:conversation).permit(:detail)
  end
end
