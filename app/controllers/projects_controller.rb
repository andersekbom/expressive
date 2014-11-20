class ProjectsController < ApplicationController

    def new
        @consultants = Consultant.all
    end

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
        
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to projects_path
    end

    def create

                

        @project = Project.new(project_params)
        @project.customer_id = params[:customer_id]
        @project.save

        @consultant = Consultant.find(params[:project][:consultant_id])
        @consultant.project_id = @project.id

        redirect_to customer_path(params[:customer_id])
    end

    private
        def project_params
            params.require(:project).permit(:name, :description)
        end

end
