require 'time'

class TimersController < ApplicationController 
	include ApplicationHelper
	include TimerHelper


def new
	@user = current_user
	@timer = Timer.new
	if @last_cig = Timer.find_by_user_id(@user.id)
	 	@time_in_seconds = current_timer(@user.id)
	 	@days = display_days(@time_in_seconds)
	 	@hours = display_hours(@time_in_seconds)
	 	@minutes = display_minutes(@time_in_seconds)
	 	@seconds = display_seconds(@time_in_seconds)
	end
end

def create
	 @timer =Timer.create
	 if @timer
		 @timer.user_id = current_user.id
		 current_user.timer_id = @timer.id
		 current_user.save
		 @timer.save
		redirect_to new_user_timer_path
	end
end

def update
	@timer = Timer.find(params[:id])
	@timer.updated_at = Time.now
	@timer.save
	flash[:notice] = "Let's try to beat the last time"
	redirect_to new_user_timer_path
end

end	