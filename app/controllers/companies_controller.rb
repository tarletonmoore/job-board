class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render :index
  end

  def show
    @company = Company.find_by(id: params[:id])
    render :show
  end

  def new
    if current_user.admin
      @company = Company.new
      render :new
    else
      redirect_to "/companies"
    end
  end

  def create
    if current_user.admin
      @company = Company.new(
        name: params[:company][:name],
        logo: params[:company][:logo],
        description: params[:company][:description],

      )
      if @company.save
        redirect_to @company
      else
        render :new, status: :unprocessable_entity
      end
    else
      render :new, status: :unprocessable_entity
    end
  end
end
