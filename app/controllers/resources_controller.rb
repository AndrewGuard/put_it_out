class ResourcesController < ApplicationController

	def index
		@resources = Resource.all
		@user=User.find(1)
	end

	def new
	  @resources= Resource.new
	end

	def show
	end

	def destroy
		resources = Resource.find(params[:id])
		resources.destroy
		flash[:notice] = "Message Deleted"
		redirect_to resources_path
	end

	def update
	end

	def create
		@resource = Resource.new(params[:resource])
		if @resource.save
			redirect_to resources_path
		else
			flash[:errors] = @resource.errors.full_messages
			redirect_to new_resource_path
		end
	end

end
