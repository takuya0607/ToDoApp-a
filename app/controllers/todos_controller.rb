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
    # ログインユーザーのIDを挿入
    @todo.User_id = current_user.id

    respond_to do |format|
      if @todo.save()
        format.html {redirect_to @todo, notice: ''}
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
        format.html { redirect_to @todo, notice: '更新完了' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    puts `[destroy]`
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: '削除完了' }
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