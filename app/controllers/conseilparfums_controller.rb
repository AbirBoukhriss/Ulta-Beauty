class ConseilparfumsController < ApplicationController

  def index
    @conseilparfums = Conseilparfum.all
  end

  def show
    @conseilparfum = Conseilparfum.find(params[:id])
  end


  def new
    @conseilparfum = Conseilparfum.new
  end

  def create
    
    @conseilparfum = Conseilparfum.new(conseilparfum_params)

    if @conseilparfum.save
      redirect_to @conseilparfum
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @conseilparfum = Conseilparfum.find(params[:id])
  end

  def update
    @conseilparfum = Conseilparfum.find(params[:id])

    if @conseilparfum.update(conseilparfum_params)
      redirect_to @conseilparfum
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @conseilparfum = Conseilparfum.find(params[:id])
    @conseilparfum.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def conseilparfum_params
      params.require(:conseilparfum).permit(:title, :body, :image)
    end
end