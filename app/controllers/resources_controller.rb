class ResourcesController < ApplicationController 

	def new
	end

	def index
		@resources = Resource.all
	end

	def new
	  @resources= Resource.new
	end

	def show
	end

	def destroy
	end

	def update
	end

	def create
	end

end