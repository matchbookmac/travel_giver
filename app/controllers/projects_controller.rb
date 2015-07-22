class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    if current_user && current_user.admin
      @country = Country.find(params[:country_id])
      @project = @country.projects.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @country = Country.find(params[:country_id])
    @project = @country.projects.new(project_params)
    @project.donation_count = 0
    @project.total_donated = 0
    if @project.save
      flash[:notice] = "Project saved."
      redirect_to country_path(@country)
    else
      flash[:notice] = "Please try again."
      render :new
    end
  end

  def show

    @country = Country.find(params[:country_id])
    @project = @country.projects.find(params[:id])
  end

  def edit
    if current_user && current_user.admin
      @country = Country.find(params[:country_id])
      @project = @country.projects.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @country = Country.find(params[:id])
    @project = @country.projects.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Your edits have been saved."
      redirect_to country_path(@country)
    else
      flash[:notice] = "Please try again."
      render :edit
    end
  end

  def destroy
    @country = Country.find(params[:country_id])
    @project = @country.projects.find(params[:id])
    @project.destroy
    redirect_to countries_path
  end

  private
  def project_params
    params.require(:project).permit(:p_name, :p_description, :project_image, :total_needed)
  end
end
