module ApplicationHelper
  def url_selecter
    case params[:type]
    when 'Dream'
      return dreams_path
    when 'LongTarget'
      return long_targets_path
    when 'MediumTarget'
      return medium_targets_path
    when 'Step'
      return steps_path
    end
  end
  def model_selecter
    case params[:type]
    when 'Dream'
      return @dream
    when 'LongTarget'
      return @long_target
    when 'MediumTarget'
      return @medium_target
    when 'Step'
      return @step
    end
  end
  
  
end
