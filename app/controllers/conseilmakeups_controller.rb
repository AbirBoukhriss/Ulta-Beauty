class ConseilmakeupsController < ApplicationController

  def index
    @conseilmakeups = Conseilmakeup.all
  end

  def show
    @conseilmakeup = Conseilmakeup.find(params[:id])
  end


  def new
    @conseilmakeup = Conseilmakeup.new
  end

  def create
    
    @conseilmakeup = Conseilmakeup.new(conseilmakeup_params)

    if @conseilmakeup.save
      redirect_to @conseilmakeup
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @conseilmakeup = Conseilmakeup.find(params[:id])
  end

  def update
    @conseilmakeup = Conseilmakeup.find(params[:id])

    if @conseilmakeup.update(conseilmakeup_params)
      redirect_to @conseilmakeup
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @conseilmakeup = Conseilmakeup.find(params[:id])
    @conseilmakeup.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def conseilmakeup_params
      params.require(:conseilmakeup).permit(:title, :body, :image)
    end
end