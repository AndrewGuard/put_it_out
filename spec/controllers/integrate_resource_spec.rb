require 'spec_helper'

feature "User creates resource and destroys" do
	fixtures :all
	
	scenario "for one resource" do
		visit "/resources"
		click_link "Add Resource"
		fill_in "Title", :with => "This is a test article"
		fill_in "Link", :with => "http://google.com"
		fill_in "Description", :with => "This is a test description"
		click_button "Create Resource"

		within("#resources") do
			expect(page).to have_text("This is a test article")
		end
		click_button "Delete Post"
		
		within("#delete") do
			expect(page).to have_text("Message Deleted")
		end
	end	
end