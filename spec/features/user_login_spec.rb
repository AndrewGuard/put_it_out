require 'spec_helper'

feature "registered user can login" do 
	scenario "for a particular user" do
		user = User.create!(password: "123456", email: "ty@gottman.com", name: "ty", username: "wwwwww")
		visit "/users/new"
		fill_in "login_email", :with => "ty@gottman.com"
		fill_in "login_password", :with => "123456"
		click_button "login_user"
		expect(page).to have_text("Hi")
	end	
end