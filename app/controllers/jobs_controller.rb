class JobsController < ApplicationController
  def show
    @job = Job.find_by(id: params[:id])
    render :show  
  end
  
  def index
    @jobs = Job.where(active: true)
    render :index
  end

  def new
    if current_user.admin
      @job = Job.new
      render :new
    else
      redirect_to "/jobs"
    end
  end

  def create
    if current_user.admin
      @job = Job.new(
        company_id: Company.find_by(name: params[:job][:company_id]).id,
        title: params[:job][:title],
        description: params[:job][:description],
        url: params[:job][:url],
        location: params[:job][:location],
        active: true,
        salary_range: params[:job][:salary_range],
      )
      if @job.save
        redirect_to @job
      else
        render :new, status: :unprocessable_entity
      end
    else
      render :new, status: :unprocessable_entity
    end
  end
end
