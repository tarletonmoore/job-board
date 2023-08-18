class JobsController < ApplicationController
  def show
    @job = Job.find_by(id: params[:id])
    render :show  
  end
  
  def index
    @jobs = Job.where(active: true)
    render :index
  end
end
