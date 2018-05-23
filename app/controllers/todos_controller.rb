class TodosController < ApplicationController
  before_action :authenticate

  def index
    p params
    todos = Todo.where(email: session[:current_email])

    render locals: { todos: todos}
  end

  def new
    todo = Todo.new

    render locals: { todo: todo }
  end

  def create
    Todo.create(todo_params.merge(email: session[:current_email]))
    redirect_to todos_path
  end

  private

    def todo_params
      params.require(:todo).permit(:title)
    end
end
