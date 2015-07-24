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
    if @project.save
      flash[:notice] = "Project saved."
      redirect_to root_path
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
      @project = Project.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def update
    @country = Country.find(params[:country_id])
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Your edits have been saved."
      redirect_to root_path
    else
      flash[:notice] = "Please try again."
      render :edit
    end
  end

  def destroy
    @country = Country.find(params[:country_id])
    @project = @country.projects.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

  private
  def project_params
    params.require(:project).permit(:p_name, :p_description, :project_image, :total_needed)
  end
end
