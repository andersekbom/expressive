class ConsultantsController < ApplicationController

    def index
        @consultants = Consultant.all
    end

    def show
        @consultant = Consultant.find(params[:id])
        @projects = Project.all
    end

    def new
    end

    def create
        @consultant = Consultant.new(consultants_params)
        @consultant.save
        redirect_to consultants_path
    end

    def destroy
        @consultant = Consultant.find(params[:id])
        @consultant.destroy
        redirect_to consultants_path
    end

    private
        def consultants_params
            params.require(:consultant).permit(:lastname, :firstname)
        end

end
