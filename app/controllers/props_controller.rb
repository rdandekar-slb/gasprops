class PropsController < ApplicationController
    def new
        @gas = Gas.find(params[:gas_id])
    end
    def create 
        @gas = Gas.find(params[:gas_id])
        @prop = @gas.props.create(prop_params)
        @prop.getzfactor
        @prop.save
        redirect_to gas_prop_path(@gas.id,@prop.id)
    end

    def show
        @gas = Gas.find(params[:gas_id])
        @prop = @gas.props.find(params[:id])
    end

    private
        def prop_params
            params.require(:prop).permit(:pressure,:temperature,:zfactor,:bg, :viscosity)
        end

end
