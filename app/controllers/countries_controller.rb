class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def new
    if current_user && current_user.admin
      @country = Country.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      flash[:notice] = "Country saved."
      redirect_to countries_path
    else
      flash[:notice] = "Please try again."
      render :new
    end
  end

  def show
    @country = Country.find(params[:id])
    @countries = Country.all
  end

  def edit
    if current_user && current_user.admin
      @country = Country.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @country = Country.find(params[:id])
    if @country.update(country_params)
      flash[:notice] = "Your edits have been saved."
      redirect_to country_path(@country)
    else
      flash[:notice] = "Please try again."
      render :edit
    end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to countries_path
  end

  private
  def country_params
    params.require(:country).permit(:c_name, :continent, :c_description, :attached_image)
  end
end
