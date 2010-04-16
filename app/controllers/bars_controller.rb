class BarsController < ApplicationController
  
  def index
    @bars = Bar.find(:all)#Bar.find(:all, :origin => [37.792,-122.393])#
  end
  
  def show
    @bar = Bar.find(params[:id], :include => [:beer])
  end
  
  def new
    @bar = Bar.new
  end
  
  def create
    @bar = Bar.create(params[:bar])
    
    if params[:bar][:lat].nil? || params[:bar][:lng].nil?
      @bar.fix_position
    end
    
    if @bar.save
      flash[:notice] = "Ny bar sparad"
      redirect_to(bar_path(@bar))
    else
      flash[:error] = "Fel vid sparning"
      render :action => "new"
    end
  end
  
  def edit
    @bar = Bar.find(params[:id])
  end
  
  def update
    @bar = Bar.find(params[:id])
    if @bar.update_attributes(params[:bar])
      flash[:notice] = "Ändringar Sparade"
      redirect_to bar_path(@bar)
    end
  end
end
