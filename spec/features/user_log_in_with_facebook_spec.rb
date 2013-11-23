require "spec_helper"

feature "registered user can login/signup with facebook" do 
	scenario "see facebook page" do
		visit "/users/new"
		click_button "fbook_button2"
		expect(page).to have_text("Hi")
	end
end
