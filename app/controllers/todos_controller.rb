class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    puts '[index]'
    @todos = Todo.all
  end
  
  def show 
    puts `[show]`
  end
  
  def new
    puts `[new]`
    @todo = Todo.new()
  end
  
  def create
    puts `[create]`
    @todo = Todo.new(todo_params)

    respond_to do |format|
      if @todo.save()
        format.html {redirect_to @todo, notice: 'User was successfully created.'}
      else
        format.html {render :new}
      end
    end
  end
  
  def edit
    puts `[edit]`
  end
  
  def update
    puts `[update]`

    respond_to do |format|
      if @todo.update(todo_params)
        format.html { redirect_to @todo, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    puts `[destroy]`
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to todos_url, notice: 'User was successfully destroyed.' }
    end
  end

  private
    def set_todo
      puts '[set_todo]'
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:Title,:Detail)
    end
end