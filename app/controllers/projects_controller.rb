class ProjectsController < ApplicationController

    def new
    end

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
        
    end

    def create
        @project = Project.new(project_params)
        @project.customer_id = params[:customer_id]
        @project.save
        redirect_to customer_path(params[:customer_id])
    end

    private
        def project_params
            params.require(:project).permit(:name, :description)
        end

end
