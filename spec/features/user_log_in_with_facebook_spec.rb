require "spec_helper"

feature "registered user can login with facebook" do 
	scenario "for a particular user" do
		visit "/users/new"
		click_button "fbook_button2"
		
		expect(page).to have_text("Facebook Login")
		fill_in 'email', :with=> 'jvvchapman@gmail.com'
		fill_in 'pass', :with =>'p@ssword'
		click_button "login_button"
		expect(page).to redirect_to()
	end
end