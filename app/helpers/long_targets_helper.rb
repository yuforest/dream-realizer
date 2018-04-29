module LongTargetsHelper
  def current_long_target_id
   @long_target_id = params[:id]
    return @long_target_id
  end

end
