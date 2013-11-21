#rake db:test:prepare
#rspec spec/features/navbar_links_spec.rb

require 'spec_helper'

feature "navbar links work" do
  # scenario "click login" do
  #   visit '/'                        # visit homepage
  #   click_link "Sign Up or Login"               # click login
  #   current_path.should == new_user_path    # verify link
  # end

  scenario "click sign up or login" do
    visit '/'                        # visit homepage
    click_link "Sign Up or Login"               # click sign up or login
    current_path.should == new_user_path    # verify link
  end

  scenario "click home" do
    visit '/'                        # visit homepage
    click_link "Put It Out"               # click home/Put It Out
    current_path.should == '/'    # verify link
  end

  # Fix this
  #  scenario "click resources" do
  #   visit '/'                        # visit homepage
  #   click_link "Resources"               # click resources
  #   current_path.should == resource_path    # verify link
  # end

  scenario "click logout" do
    visit '/'                        # visit page where sessions are in session
    click_link "Sign Up or Login" 
    fill_in "Name", :with => "Test Person"
    # first(:email, "Email").fill_in, :with => "test_person@mail.com" 
    fill_in "user_email", :with => "test_person@mail.com"
    fill_in "Username", :with => "test_person_username"
    fill_in "user_password", :with => "test_person_password"
    click_button "Create Account"

    click_link "Logout"               # click logout
    current_path.should == '/'    # verify link
  end  

  scenario "click create new post" do
    visit '/'                        # visit page where sessions are in session
    click_link "Sign Up or Login" 
    fill_in "Name", :with => "Test Person"
    # first(:email, "Email").fill_in, :with => "test_person@mail.com" 
    fill_in "user_email", :with => "test_person@mail.com"
    fill_in "Username", :with => "test_person_username"
    fill_in "user_password", :with => "test_person_password"
    click_button "Create Account"
    click_link "Create a new post"               # click create a new post
    current_path.should == new_post_path    # verify link
  end 

end
