require "spec_helper"

feature "User posts a comment" do
  scenario "user goes to create a new comment" do

    user = User.create!(name: "Jake", username: "Jakeeey", email: "Jake@jake.com", password: "password")
    page.set_rack_session(:id => user.id)

    visit "/posts/new"
    fill_in "post_title", :with => "Testy Title"
    fill_in "post_body", :with => "Testy Body"
    click_button "Create Post"
    visit "/posts/1"
    fill_in "comment_text", :with => "Gotta Post Gatta Post Dream Team"
    click_button "Create Comment"
    visit "/posts/1"
    expect(page).to have_text("Gotta Post Gatta Post Dream Team")
    end
  end

