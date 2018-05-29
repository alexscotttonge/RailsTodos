class TodosController < ApplicationController
  before_action :authenticate

  def index
    todos = current_user.todos

    render locals: { todos: todos}
  end

  def new
    todo = Todo.new

    render locals: { todo: todo }
  end

  def create
    current_user.todos.create(todo_params)
    
    redirect_to todos_path
  end

  private

    def todo_params
      params.require(:todo).permit(:title)
    end
end
