# app/controller/tasks_controller.rb
class TasksController < ApplicationController
# title
# details
# completed

  def index
    # GET /tasks
    @tasks = Task.all
  end

  def show
    # GET /tasks/:id
    @task = Task.find(params[:id])
  end

  def new
    # GET /tasks/new
    @task = Task.new
  end

  def create
    # POST /tasks
    @task = Task.new(task_params)
    @task.save

    # no need for app/views/tasks/create.html.erb
    redirect_to task_path(@task)
  end

  def edit
    # GET /tests/:id/edit
    @task = Task.find(params[:id])
  end

  def update
    # PATCH /tests/:id
    @task = Task.find(params[:id])
    @task.update(task_params)

    # no need for app/views/tasks/update.html.erb
    redirect_to task_path(@task)
  end

  def destroy
    # DELETE /tests/:id
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

  private

  def task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:task).permit(:title, :details, :completed)
  end
end
