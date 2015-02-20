class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
  end

  def show
    @puppy = Puppy.find params[:id]
  end

  def new
    @puppy = Puppy.new
  end

  def edit
    @puppy = Puppy.find params[:id]
  end

  def create
    @puppy = Puppy.new puppy_params
      if @puppy.save
        redirect_to "/puppies"
      else
        render :new
      end
  end

  private
  def puppy_params
    params.require(:puppy).permit(:name,:age,:breed)
  end
end