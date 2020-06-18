class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
  end

  def new
    @sweet = Sweet.new
    @vendors = Vendor.all
  end

  def create
    @sweet = Sweet.create(sweet_params)
    vs = params[:vendor_sweet]
    @vendor_sweet = VendorSweet.create(
      price: vs[:price],
      vendor_id: vs[:vendor_id],
      sweet_id: @sweet.id
    )
    if @sweet.valid? && @vendor_sweet.valid?
      redirect_to sweet_path(@sweet)
    else
      flash[:errors] = @sweet.errors.full_messages + @vendor_sweet.errors.full_messages
      redirect_to new_sweet_path
    end
  end

  private

  def sweet_params
    params.require(:sweet).permit(:name)
  end

end
