require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy booze"

    expect(page).to display_todo "Buy booze"
  end
end
