require 'spec_helper'

feature "user profile editing" do

  #Signup or Login
  scenario "Non-facebook user can edit their personal information" do
    visit '/'
    click_link "Sign Up or Login"
    fill_in "user_name", :with => "Test Person"
    fill_in "user_email", :with => "test_person@mail.com"
    fill_in "Username", :with => "test_person_username"
    fill_in "user_password", :with => "test_person_password"
    click_button "Create User"

    click_link "Edit"               # click logout
    fill_in "user_name", :with => "Test Human"
    fill_in "user_email", :with => "test_human@mail.com"
    fill_in "Username", :with => "test_human_username"
    fill_in "user_password", :with => "test_human_password"
    click_button "Update User"
    #current_path.should == 'users_path(@user)' Test current path with user id?

  end
end

