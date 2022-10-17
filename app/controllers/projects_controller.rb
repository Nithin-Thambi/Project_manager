class ProjectsController < ApplicationController
  def index
    @projects = Project.page(params[:page]).per(6)
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    else
      render :new
    end
    
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      redirect_to root_path
    else
      render :index
    end
  end


  private

  def project_params
    params.require(:project).permit(:p_name, :p_description, tasks_attributes: [:id, :t_name, :t_discription])
  end

end
