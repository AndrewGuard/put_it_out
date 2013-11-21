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
	@resource = Resource.new(params[:resource])
		if @resource.save
			redirect_to resources_path
		else
			flash[:errors] = @resources.errors.full_messages
			redirect_to new_resources_path
		end	
	end

end