class ProjectsController < ApplicationController

    respond_to :html, :xml, :json

    def index
        @projects = Project.order(:customer_id).all
    end

    def show
        @project = Project.find(params[:id])
    end

    def new
        @project = Project.new
        @consultants = Consultant.all
        @customer = Customer.find(params[:customer_id])
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to customer_path(params[:customer_id])
    end

    def create
        @project = Project.new(project_params)
        @project.customer_id = params[:customer_id]
        if @project.save
            redirect_to customer_path(params[:customer_id])
        else
            @consultants = Consultant.all
            @customer = Customer.find(params[:customer_id])
            render :new
        end

    end

    private
        def project_params
            params.require(:project).permit(:name, :description, :consultant_id, :startdate, :enddate)
        end

end
