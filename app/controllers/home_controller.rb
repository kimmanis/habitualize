class HomeController < ApplicationController
  def index
    @users = User.all
    if current_user
    	@my_flosses = Floss.where("user = ?", current_user.id)
    	@floss_today = Floss.where("user = ?", current_user.id).last || 
    	if (Time.now > current_user.reminder_time) 
    		unless (@floss_today.created_at.today? if @floss_today)
    			@past_time = "reminder"
    		end
    	end
    end 
  end
end
