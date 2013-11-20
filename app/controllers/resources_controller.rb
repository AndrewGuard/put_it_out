class ResourcesController < ApplicationController 

	def new
	end

	def index
		@resources = Resource.all
	end

end