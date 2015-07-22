class AllprojectsController < ApplicationController

  def index
    @projects = Project.all
  end
end
