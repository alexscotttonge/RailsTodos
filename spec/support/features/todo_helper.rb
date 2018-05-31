module Features

  def create_todo(todo_title)
    click_on "Add a new item"
    fill_in "Title", with: todo_title
    click_on "Save"
  end
end
