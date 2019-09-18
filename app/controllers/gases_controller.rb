class GasesController < ApplicationController

    def new
        @gas = Gas.new
    end

    def edit 
        @gas = Gas.find(params[:id])
    end

    def index 
        @gases = Gas.all
    end

    def show
        @gas = Gas.find(params[:id])
        #@gas.captitalize_name
    end

    def create
        @gas = Gas.new(gas_params)

        if @gas.save
            redirect_to @gas
        else
            render 'new'
        end
    end

    def update
        @gas = Gas.find(params[:id])
        if @gas.update(gas_params)
            redirect_to @gas
        else
            render 'edit'
        end
    end


    def destroy
        @gas = Gas.find(params[:id])
        @gas.destroy
        redirect_to gases_path
    end

    private_methods
    def gas_params
        params.require(:gas).permit(:name, :description, :specific_gravity, :h2s, :co2, :n2)
    end
end
