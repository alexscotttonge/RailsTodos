require "rails_helper"

RSpec.feature "User completes todo" do
  scenario "successfully" do
    sign_in

    click_on "Add a new item"
    fill_in "Title", with: "Buy booze"
    click_on "Save"

    click_on "Mark complete"

    expect(page).to have_css ".todos li.completed", text: "Buy milk"
  end
end
