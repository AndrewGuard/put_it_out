require 'spec_helper'

feature "user sucessfully creates a new account" do
	scenario "for a particular user" do
		visit "/users/new"
		fill_in "user_name", :with => "AndrewG"
		fill_in "user_email", :with=> "email@test.museum"
		fill_in "user_username", :with=> "usernameg"
		fill_in "user_password", :with=> "password"
		click_button "create_account"
		expect(page).to have_text("Hi")
	end
end