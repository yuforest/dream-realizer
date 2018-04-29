class LongTargetsController < ApplicationController
  before_action :set_long_target, only: [:show, :edit, :update, :destroy]
  before_action :non_user_redirect_to_login
  def index
    if logged_in?
      if not current_user.dream.nil?
        @dream = current_user.dream
        @long_targets = current_user.dream.long_targets.all
      end
    else
      flash[:notice] = 'ログインしてください'
      render 'sessions/new'
    end
    
  end
  
  def new
    if current_user.dream != nil
      @long_target = LongTarget.new
    else
      flash[:danger] = '先に夢を設定してください'
      render 'long_targets/index'
    end
      
  end
  
  def create
    @long_target = LongTarget.create(target_params)
    @long_target.dream_id = Dream.first.id
    
    if @long_target.save
      redirect_to long_targets_path
    else
      render 'long_targets/new'
    end
  end
  
  def show
     @long_target = current_user.dream.long_targets.find(params[:id])
     @medium_targets = @long_target.medium_targets
     @complete_percentage = (@medium_targets.where(status: true).count.to_f / @medium_targets.count.to_f)*100
     @round_percentage = @complete_percentage.round(1)
  end
  
  def edit
    
  end
    
  def update
    if @long_target.update(target_params)
      redirect_to long_targets_path, notice: "長期目標を変更しました"
    else
      render 'edit'
    end
  end
    
  def destroy
    @long_target.destroy
    redirect_to long_targets_path, notice: "長期目標を削除しました"
  end
  
  
  private 
    def target_params
      params.require(:long_target).permit(:target, :start, :end)
    end
    def set_long_target
      @long_target = current_user.dream.long_targets.find(params[:id])
    end
end
