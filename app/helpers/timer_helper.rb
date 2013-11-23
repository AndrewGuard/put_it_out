require 'time'
module TimerHelper 
	
	def current_timer(user_id)
		last_cig=Timer.find_by_user_id(user_id)
		self.time_since_last_cig(last_cig)
	end

	def time_since_last_cig(last_user_cig)
	   exact_time =(Time.now - last_user_cig)
		self.time_broken_down(exact_time)
	end

	def time_broken_down_seconds(exact_time)
		 exact_time*60
	end

	def display_days(seconds)
		seconds/86400
	end

	def display_hours(seconds)
		seconds % 86400 / 3600
	end

	def display_minute(seconds)
		seconds % 86600 % 3600 / 60
	end

	def display_seconds(seconds)
		seconds % 86600 % 3600 % 60 
	end
