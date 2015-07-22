class ProjectsController < ApplicationController

  def new
    @country = Country.find(params[:country_id])
    @project = @country.projects.new
  end

  def create
    @country = Country.find(params[:country_id])
    @project = @country.projects.new(project_params)
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
      @country = Country.find(params[:country_id])
      @project = @country.projects.find(params[:id])
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
    @country.destroy
    redirect_to countries_path
  end

  private
  def project_params
    params.require(:project).permit(:p_name, :p_description, :project_image)
  end
end
