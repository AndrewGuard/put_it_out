require 'time'
module TimerHelper 
	
	def current_timer(user_id)
		last_cig=Timer.find_by_user_id(user_id)
		 time_since_last_cig(last_cig.updated_at)
	end

	def time_since_last_cig(last_user_cig)
		exact_time(Time.now - last_user_cig)
	end

	def exact_time(exact_time)
		 exact_time
	end

	def display_days(seconds)
		(seconds/86400).floor
	end

	def display_hours(seconds)
		(seconds % 86400 / 3600).floor
	end

	def display_minutes(seconds)
		(seconds % 86600 % 3600 / 60).floor
	end

	def display_seconds(seconds)
		(seconds % 86600 % 3600 % 60).floor
	end

end
