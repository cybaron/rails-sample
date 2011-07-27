class TasksController < ApplicationController
  before_filter :authenticate_user!

  def index
    @task = Task.new
    @tasks = Task.undone.paginate(:page => params[:page], :per_page => 10)
  end

  def done
    @task = Task.new
    @tasks = Task.done.paginate(:page => params[:page], :per_page => 10)
    render :action => 'index'
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    redirect_to :tasks
  end

  def finish
    @task = Task.find(params[:id])
    @task.update_attribute(:done, true)
    redirect_to :back
  end

  def unfinish
    @task = Task.find(params[:id])
    @task.update_attribute(:done, false)
    redirect_to :back
  end
end
