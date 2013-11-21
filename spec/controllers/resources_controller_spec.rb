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
end