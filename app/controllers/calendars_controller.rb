class CalendarsController < ApplicationController
  before_action :non_user_redirect_to_login
  def index
    if logged_in?
      if current_user.dream != nil
        @long_targets = current_user.dream.long_targets
        for i in @long_targets
           i.end = i.end.to_date + 1
        end
        @medium_targets = []
        for long_target in @long_targets
          @medium_target = long_target.medium_targets
          for i in @medium_target
            @medium_targets << i
          end
        end
        for i in @medium_targets
            i.end = i.end.to_date + 1
        end
      end
    end
  end
end
