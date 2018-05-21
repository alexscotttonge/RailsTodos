require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path

    click_on "Add a new item"
    fill_in "Title", with: "Buy booze"
    click_on "Save"

    expect(page).to have_css ".todos li", text: "Buy booze"
  end
end
