require "rails_helper"

RSpec.feature "User sees own todos" do
  scenario "doesn't see others' todo" do
    Todo.create!(title: "Buy fags", email: "keith@richards.com")

    sign_in_as "mrpink@dogs.com"

    expect(page).not_to display_todo "Buy fags"
  end
end
