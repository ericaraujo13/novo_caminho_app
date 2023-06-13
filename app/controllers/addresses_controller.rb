class AddressesController < ApplicationController
  before_action :set_contact

  def new
    @address = @contact.build_address
  end

  def create
    @address = @contact.build_address(address_params)
    if @address.save
      redirect_to @contact, notice: 'Address was successfully created.'
    else
      render :new
    end
  end

  def edit
    @address = @contact.address
  end

  def update
    @address = @contact.address
    if @address.update(address_params)
      redirect_to @contact, notice: 'Address was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @address = @contact.address
    @address.destroy
    redirect_to @contact, notice: 'Address was successfully destroyed.'
  end

  private

  def set_contact
    @contact = Contact.find(params[:user_id])
  end

  def address_params
    params.require(:address).permit(:street, :city, :number)
  end
end
