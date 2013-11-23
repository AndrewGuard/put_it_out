module TimerHelper 
	
	def current_timer(user_id)
		last_cig=Timer.find_by_user_id(user_id)
		self.time_since_last_cig(last_cig)
	end

	def time_since_last_cig(last_user_cig)
	end


	end
