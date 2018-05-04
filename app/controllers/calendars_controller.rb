class CalendarsController < ApplicationController
  def index
  
    if logged_in?
      @long_targets = current_user.dream.long_targets
      
    
      @medium_targets = []
      for long_target in @long_targets
        @medium_target = long_target.medium_targets
        for i in @medium_target
          @medium_targets << i
        end
      end
    end
  end
end
