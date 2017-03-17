class BuyersController < ApplicationController
  def index
  end

  def new
    @buyer = UsrBuyer.new
  end

  def create
    @currentuser = current_user
    @buyer = UsrBuyer.new(buyer_params)
    @currentuser.usr_buyer = @buyer
    if @buyer.save()
      redirect_to root_path, notice: "The buyer has been registered."
    else
      redirect_to root_path, notice: "The buyer has not been registered."
    end

  end

  def edit
    @currentuserid = current_user.id
    @buyer = UsrBuyer.find(user_id = @currentuserid)
  end

  def update
    @currentuserid = current_user.id
    @buyer = UsrBuyer.find(user_id = @currentuserid)
    if @buyer.update_attributes(buyer_params)
      redirect_to root_path, notice:  "The buyer has been updated"
    else
      redirect_to root_path, notice:  "The buyer has not been updated"
    end


  end

  def destroy

  end

  private
  def buyer_params
    params.require(:usr_buyer).permit(:addressLine1, :addressLine2, :addressLine3, :city, :zipCode, :country, :dob, :anniversary )
  end
end
