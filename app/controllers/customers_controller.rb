class CustomersController < ApplicationController

    def index
        @customers = Customer.all
    end

    def new
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def update
        @customer = Customer.find(params[:id])
        @customer.update(consultant_id: params[:con])
        redirect_to consultant_path({id: params[:con]})
    end

    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy
        redirect_to customers_path
    end

    def create
      @customer = Customer.new(customer_params)
      @customer.save
      redirect_to customers_path
    end
     
    private
      def customer_params
        params.require(:customer).permit(:name, :description)
      end

end
