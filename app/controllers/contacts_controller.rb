class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contact = Contact.new
    @contact.build_address

  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to contacts_path, notice: "Contact was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @contact.update(contact_params)
      redirect_to contacts_path, notice: "Contact was successfully updated."
    else
      format.html { render :edit, status: :unprocessable_entity }
    end
  end

  def destroy
    @contact.destroy

    redirect_to contacts_url, notice: "Contact was successfully destroyed."
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :role, :cpf, address_attributes: [:street, :number, :city])
    end
end
