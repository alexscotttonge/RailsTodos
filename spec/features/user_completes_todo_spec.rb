require "rails_helper"

RSpec.feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy booze"

    click_on "Mark complete"

    expect(page).to have_css ".todos li.completed", text: "Buy booze"
  end
end
