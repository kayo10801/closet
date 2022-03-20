class ClothesController < ApplicationController
before_action :set_clothe, only: [:edit, :update, :destroy, :show]

  def index
    @clothes = Clothe.all
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(clothe_params)
    if @clothe.save
       redirect_to root_path
    else
      render :new
     
    end
  end

  def show
   
  end

  def edit
   
  end

  def update
    
    if @clothe.update(clothe_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @clothe.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def search
    #@clothe = Clothe.find(params[:id])
    @clothes = Clothe.search(params[:keyword])
  end

  private
  def clothe_params
    params.require(:clothe).permit(:memo, :image, :date, :season, :color)
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end
end
