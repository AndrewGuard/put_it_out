require 'spec_helper'

describe ResourcesController do
	fixtures :all
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
	
	describe "render edit" do
		before do 
			@resource =Resource.create(title: "Tyson-machine or blind acrobat?", link: "http://tyson.com", description: "When placed in a maze with a mouse, Ty lost 8 out of 10 times.")
		end
			it "renders the edit template" do
		expect(:edit).to render_template(controller: "resources", id: @resource.id, action: "edit")
			end
	end

	
	describe "index" do
    it "assigns all resources to page" do
      get :index
      expect(assigns(:resources).length).to eq Resource.all.length
    end

    it "renders index" do
      get :index
      expect(response).to render_template(controller: "resources", action: "index")
    end
  end

 #  describe "#update" do
 #  	before :each do
 #  		@fake_resource = Resource.create(title: "Tyson-machine or blind acrobat?", link: "http://tyson.com", description: "When placed in a maze with a mouse, Ty lost 8 out of 10 times.")
 #  	end
 #  	it "receives the right resource to update" do
 #  		Resource.should_receive(:find).with(@fake_resource.id).and_return(@resource)
 #  		put :update, :id => @fake_resource.id, :title => @fake_resource.title
 #  	end
 #  	it "should prepare the movie object available for update" do
 #  		put :update, :id => @fake_resource.id, :title => @fake_resource.title
 #  		assigns(:resource).should == @fake_resource
 #  	end
	# end

	describe "routing" do
		before :each do
  		@fake_resource = Resource.create(title: "Tyson-machine or blind acrobat?", link: "http://tyson.com", description: "When placed in a maze with a mouse, Ty lost 8 out of 10 times.")
  	end
		it "routes to #index" do
			expect(get: "/resources").to route_to(controller: "resources", action: "index")
		end
	

		it "routes to #new" do
			expect(get: "/resources/new").to route_to(controller: "resources", action: "new")
		end
	end



end


