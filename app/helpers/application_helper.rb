module ApplicationHelper
  # def url_selecter
  #   if action_name == 'new'
  #     case params[:type]
  #     when 'Dream'
  #       return dreams_path
  #     when 'LongTarget'
  #       return long_targets_path
  #     when 'MediumTarget'
  #       return medium_targets_path
  #     when 'Step'
  #       return steps_path
  #     end

  #   end
  # end
  
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
  

  def devide_new_or_edit
    if action_name == 'new' || action_name == "create"
      return "作成"
    elsif action_name == 'edit' || action_name == 'update'
      return "編集"
    end
  end
  
  def choose_model_type
    case params[:type]
    when 'Dream'
      return "夢"
    when 'LongTarget'
      return "長期目標"
    when 'MediumTarget'
      return "中期目標"
    when 'Step'
      return "ステップ"
    end 
  end
  

end
