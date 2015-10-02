require 'rails_helper'

RSpec.feature "Creating Posts" do
  scenario "a user creates a new post" do
    visit root_path

    click_link "new post"
    fill_in "title", with:" tutorial title test"
    fill_in "body", with:" tutorial body test"
    click_button "create post"

    expect(page).to have_content("Tutorial has been Created!")
    expect(page.current_path).to eq(posts_path)
  end

end
