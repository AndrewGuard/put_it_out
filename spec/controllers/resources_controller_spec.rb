require 'spec_helper'

describe ResourcesController do
	describe "#create" do
		it "creates a new instance" do
			valid_resource_params = {title: "Tyson-machine or blind acrobat?", link: "http://tyson.com", description: "When placed in a maze with a mouse, Ty lost 8 out of 10 times."}
			expect {
				post :create, resource: valid_resource_params
			}.to change(Resource, :count).by(1)
		end
	end
	describe "#destroy" do
		before do 
			@resource =Resource.create(title: "Tyson-machine or blind acrobat?", link: "http://tyson.com", description: "When placed in a maze with a mouse, Ty lost 8 out of 10 times.")
		end
		it "destroys an instance" do 
			expect {
				delete :destroy, :id => @resource}.to change(Resource, :count).by(-1)
		end

	end



end


