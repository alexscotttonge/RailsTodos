require "rails_helper"

RSpec.feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy booze"

    click_on "Mark complete"
    click_on "Mark incomplete"

    expect(page).not_to display_completed_todo "Buy booze"
    expect(page).to display_todo "Buy booze"
  end
end
