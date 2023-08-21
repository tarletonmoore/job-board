class LikedJobsController < ApplicationController

  # def index
  #   @jobs = Job.where(active: true)
  #   render :index
  # end

  # def new
  #   if current_user
  #     @liked_job = LikedJob.new
  #     render :new
  #   else
  #     redirect_to "/jobs"
  #   end
  # end

  def create
    if current_user
      @liked_job = LikedJob.new(
        user_id: current_user.id,
        job_id: params[:job_id],
        is_liked: true,
      )
      @liked_job.save
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if current_user
      @liked_job = LikedJob.find_by(id: params[:id])
      @liked_job.destroy
    end
  end
end
