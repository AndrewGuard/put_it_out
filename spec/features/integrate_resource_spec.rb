require 'spec_helper'

feature "User managing resources" do
	fixtures :all
	
	scenario "when creating resources" do
		visit "/resources"
		click_link "Add Resource"
		fill_in "Title", :with => "This is a test article"
		fill_in "Link", :with => "http://google.com"
		fill_in "Description", :with => "This is a test description"
		click_button "Create Resource"

		within("#resources") do
			expect(page).to have_text("This is a test article")
		end
	end	

	scenario "when deleting resources" do
		visit "/resources"
		click_link "Add Resource"
		fill_in "Title", :with => "This is a test article"
		fill_in "Link", :with => "http://google.com"
		fill_in "Description", :with => "This is a test description"
		click_button "Create Resource"

		click_button "Delete Post"
		
		within("#delete") do
			expect(page).to have_text("Message Deleted")
		end
	end	
end