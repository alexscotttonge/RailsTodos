class TodosController < ApplicationController
  def index
    todos = Todo.all

    render locals: { todos: todos}
  end

  def new
    todo = Todo.new

    render locals: { todo: todo }
  end

  def create
    Todo.create(todo_params)
    redirect_to todos_path
  end

  private

    def todo_params
      params.require(:todo).permit(:title)
    end
end
