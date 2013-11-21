require "spec_helper"

feature "User creates post" do
  scenario "user goes to create a new post" do
    visit "/posts/new"
    fill_in "post_title", :with => "Testy Title"
    fill_in "post_body", :with => "Testy Body"

    click_button "Create Post"

    expect(page).to have_text("Testy Title")

    click_link "Testy Title"

    expect(page).to have_text("Testy Body")
  end
end
