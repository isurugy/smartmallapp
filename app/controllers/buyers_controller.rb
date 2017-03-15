class BuyersController < ApplicationController
  def new
    @usrBuyer = UsrBuyer.new
  end

  def create
    @usrBuyer = UsrBuyer.new(userBuyer_params)

    if @usrBuyer.save
      redirect_to root_path, notice: "The resume #{@usrBuyer.name} has been uploaded."
    else
      render new
    end


  end

  def update
  end

  def destroy
  end

  private
    def userBuyer_params
      params.require(:usr_buyer).permit(:adressLine1,:adressLine2,:adressLine3,:city,:zipCode,:country,:dob,:anniversary)
    end

end
