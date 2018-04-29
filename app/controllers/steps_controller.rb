class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]
  def index
    @long_targets = LongTarget.all
  
  end
  
  def new
    @step = Step.new
  end
  
  def create
    @step = Step.create(target_params)

    if @step.save
      redirect_to medium_target_path(@step.medium_target_id)
    else
      render 'steps/new'
    end
  end
  
  def show
    

  end
  
  def edit
  end
    
  def update
    if @step.update(target_params) 
        redirect_to medium_target_path(@step.medium_target.id)
      else
        render 'edit'
    end
  end
    
  def delete
    @step.destroy
    redirect_to medium_target_path(@step.medium_target.id)
  end
  
  
  private 
    def target_params
      params.require(:step).permit(:target, :start, :end, :medium_target_id)
    end
    def set_step
      @step = Step.find(params[:id])
    end
end
