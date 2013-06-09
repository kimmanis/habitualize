class HomeController < ApplicationController
  def index
    @users = User.all
    if current_user
    	@floss = Floss.new
    	@user = current_user
    	@floss.user = current_user.id
    	@my_flosses = Floss.where("user = ? and created_at < ?", current_user.id, Date.today)
    	@floss_today = Floss.where("user = ? and DATE(created_at) = ?", current_user.id, Date.today).last || 
    	@floss_yesterday = Floss.where("user = ? and DATE(created_at) = ?", current_user.id, Date.yesterday).last || 
    	@floss_three = Floss.where("user = ? and DATE(created_at) = ?", current_user.id, Date.today - 2.days).last ||
    	@floss_four = Floss.where("user = ? and DATE(created_at) = ?", current_user.id, Date.today - 3.days).last ||
    	# decide to show the reminder
    	if (current_user.reminder_time != nil) and (Time.now > current_user.reminder_time) 
    		unless (@floss_today.created_at.today? if @floss_today)  or (Time.now < current_user.next_reminder)
    			@past_time = "reminder"
    		end
    	end
    end 
  end
end
