class MediumTargetsController < ApplicationController
  before_action :set_medium_target, only: [:show, :edit, :update, :destroy]
  before_action :non_user_redirect_to_login
  def index
    @medium_targets = MediumTarget.all
  
  end
  
  def new
    @medium_target = MediumTarget.new
    
  end
  
  def create
    @medium_target = MediumTarget.create(target_params)
    @medium_target.status = false
    
    if @medium_target.save
      redirect_to long_target_path(@medium_target.long_target_id)
    else
      render 'long_targets/new'
    end
  end
  
  def show
    
  end
  
  def edit
    
  end
    
  def update
    if params[:status] != nil
      @medium_target.update(:status => true)
      flash[:notice] = "完了しました！"
      redirect_to long_target_path(@medium_target.long_target_id)
    end
    
    if params[:status] == nil
      if @medium_target.update(target_params) 
        redirect_to medium_target_path(@medium_target.id)
      else
        render 'edit'
      end
    end
  end
    
  def destroy
    @medium_target.destroy
    redirect_to long_target_path(@medium_target.long_target.id)
  end
  
  
  private 
    def target_params
      params.require(:medium_target).permit(:target, :start, :end, :long_target_id)
    end
    
    def set_medium_target
      @medium_target = MediumTarget.find(params[:id])
    end
end
