class CalendarsController < ApplicationController
  before_action :non_user_redirect_to_login
  def index
  
    if logged_in?
      @long_targets = current_user.dream.long_targets
      for i in @long_targets
        i.end += 60*60*24
      end
      @medium_targets = []
      for long_target in @long_targets
        @medium_target = long_target.medium_targets
        for i in @medium_target
          @medium_targets << i
        end
        
        for i in @medium_targets
          i.end += 59*60*24
        end
      end
    end
  end
end
