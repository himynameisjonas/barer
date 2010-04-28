class BeersController < ApplicationController
  
  before_filter :authenticate_user!
  
  def new
    if !user_signed_in?
      flash[:error] = "Måste vara medlem"
      redirect_to(new_user_registration_path)
    end
    @beer = Bar.find(params[:bar_id]).beer.new
  end
  
  def create
    @beer = Bar.find(params[:bar_id]).beer.create(params[:beer])
    if @beer.save
      flash[:notice] = "Nytt ölpris sparat"
      redirect_to bar_path(params[:bar_id])
    else
      flash[:error] = "Fel vid sparning"
      render :action => "new"
    end
  end
  
end
