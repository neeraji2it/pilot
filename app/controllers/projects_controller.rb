class ProjectsController < ApplicationController
  
   before_filter :get_project, :except => ["new", "create", "index"]
  #GET /projects/
  def index
    @projects = current_user.projects.order("created_at desc").paginate(:per_page => 10, :page => params[:page])
  end
  
  #GET /projects/new
  def new
    @project = Project.new
  end
  
  
  #POST /projects
  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    if @project.save
      flash[:notice] = "Project has been created successfully."
      redirect_to projects_path
    else
      render 'new'
    end
  end
  
  #GET /projects/1/edit
  def edit
  end
  
  #PUT /projects/1
  def update 
    if @project.update_attributes(project_params)
      flash[:notice] = "Project has been updated successfully."
      redirect_to projects_path
    else
      render 'edit'
    end
  end
  
  def destroy
    if @project.destroy
      flash[:notice] = "Project has been deleted successfully."
      redirect_to projects_path
    else
       flash[:error] = "Project deletion failed"
    end
  end

  def get_project
    @project = Project.find(params[:id])
  end
  
  private
  
  def project_params
    params.require(:project).permit!
  end  
end
