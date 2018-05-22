module Features
  def sign_in
    visit root_path
    fill_in "Email", with: "thedude@abides.org"
    click_on "Sign in"
  end
end
