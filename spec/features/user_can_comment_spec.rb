require "spec_helper"

feature "User posts a comment" do

  scenario "user goes to comment on a new post" do
    visit "/users/new"
    fill_in "Name", :with => "AndrewG"
    fill_in "user_email", :with=> "email@test.museum"
    fill_in "Username", :with=> "usernameg"
    fill_in "user_password", :with=> "password"
    click_button "Create Account"
    visit "/posts/new"
    fill_in "post_title", :with => "Testy Title"
    fill_in "post_body", :with => "Testy Body"
    click_button "Create Post"
    visit "/posts/1"



  end
end
