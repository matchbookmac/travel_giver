class CountriesController < ApplicationController

  def index
  end

  def new
    @country = Country.new
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
  end

  def edit
      @country = Country.find(params[:id])
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
    params.require(:country).permit(:c_name, :continent, :c_description)
  end
end
