require 'spec_helper'

describe Resource Create do

		it "creates a new instance" do
			valid_resource_params = {title: "Tyson-machine or blind acrobat?", link: "htttp://tyson.com", description: "When placed in a maze with a mouse, Ty lost 8 out of 10 times."}
			expect {
			post :create, resource: valid_resource_params
		end
end