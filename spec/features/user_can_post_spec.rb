require "spec_helper"

feature "User creates post" do

  scenario "user goes to create a new post" do
    # visit "/users/new"
    # fill_in "Name", :with => "AndrewG"
    # fill_in "user_email", :with=> "email@test.museum"
    # fill_in "Username", :with=> "usernameg"
    # fill_in "user_password", :with=> "password"
    # click_button "Create Account"
    user = User.create!(name: "Jake", username: "Jakeeey", email: "Jake@jake.com", password: "password")
    page.set_rack_session(:id => user.id)

    visit "/posts/new"
    fill_in "post_title", :with => "Testy Title"
    fill_in "post_body", :with => "Testy Body"
    click_button "Create Post"
    expect(page).to have_text("Testy Title")
    click_link "Testy Title"
    expect(page).to have_text("Testy Body")
  end
end
