require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy booze"

    expect(page).to have_css ".todos li", text: "Buy booze"
  end
end
