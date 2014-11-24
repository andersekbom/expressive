class ConsultantsController < ApplicationController

    def index
        @consultants = Consultant.all
    end

    def show
        @consultant = Consultant.find(params[:id])
    end

    def new
    end

    def create
        @consultant = Consultant.new(consultant_params)
        @consultant.save
        redirect_to consultants_path
    end

    def edit
        @consultant = Consultant.find(params[:id])
    end

    def destroy
        @consultant = Consultant.find(params[:id])
        @consultant.destroy
        redirect_to consultants_path
    end

    def update
        @consultant = Consultant.find(params[:id])
        if @consultant.update(consultant_params)
            redirect_to @consultant
        else
            render 'edit'
        end
    end    

    private
        def consultant_params
            params.require(:consultant).permit(:lastname, :firstname)
        end

end
