class DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update, :destroy]
  def index
    @dreams = Dream.all
    
  end
  
  def new
    @dream = Dream.new
  end
  
  def create
    @dream = Dream.create(target_params)
    @dream.user_id = current_user.id
    
    if @dream.save
      redirect_to long_targets_path
    else
      render 'dreams/new'
    end
  end
  
  def show
    
     
  end
  
  def edit
    
  end
    
  def update
    
    if @dream.update(target_params)
      redirect_to long_targets_path, notice: "夢を編集しました"
    else
      render 'edit'
    end
  end
    
  def destroy
    @dream.destroy
    redirect_to long_targets_path, notice: "夢をリセットしました"
  end
  
  
  private 
    def target_params
      params.require(:dream).permit(:target, :start, :end)
    end
    
    def set_dream
      @dream = Dream.find(params[:id])
    end
end


