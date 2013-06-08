class HomeController < ApplicationController
  def index
    @users = User.all
    if current_user
    	@my_flosses = Floss.where("user = ?", current_user.id)
    end 
  end
end
