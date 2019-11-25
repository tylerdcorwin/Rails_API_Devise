class V1::ContactsController < ApplicationController
  def index
    @contacts = Contact.all

    render json: @contacts, status: :ok
  end

  def create
    @contact = Contact.new(contact_params)

    @contact.save
    render json: @contact, status: :created
  end

  def destroy
    @contact = Contact.where(id: params[:id]).first
    if @contact.destroy
      head(:ok)
    else
      # Rails way of just returning the content in the header so we dont loose any information
      head(:unprocessable_entity)
    end

  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email)
  end
end
