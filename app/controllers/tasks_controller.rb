class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def edit

  end

  def update
    @task.update(task_params)
    redirect_to task_path(@restaurant)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    return params.require(:task).permit(:title, :status)
  end
end
