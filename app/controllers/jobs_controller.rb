class JobsController < ApplicationController
  def show
    @job = Job.find_by(id: params[:id])
    render :show
  end
end
