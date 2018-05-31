module Features

  def create_todo(todo_title)
    click_on "Add a new item"
    fill_in "Title", with: todo_title
    click_on "Save"
  end

  def display_todo(todo_title)
    have_css ".todos li", text: todo_title
  end
end
