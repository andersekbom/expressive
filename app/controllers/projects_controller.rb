class ProjectsController < ApplicationController

    def new
    end

    def index
        @customer = Customer.find(params[:customer_id])
        @projects = @customer.projects.all    
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
