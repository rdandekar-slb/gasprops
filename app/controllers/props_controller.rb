class PropsController < ApplicationController
    def new
        @gas = Gas.find(params[:gas_id])
    end
    def create 
        @gas = Gas.find(params[:gas_id])
        @prop = @gas.props.new(prop_params)
        #@prop.get_zfactor
        #@prop.save
        redirect_to gas_prop_path(@gas.id,@prop.id)
    end

    def show
        @gas = Gas.find(params[:gas_id])
        @prop = @gas.props.find(params[:id])
        #@prop.get_zfactor
    end

    private
        def prop_params
            params.require(:prop).permit(:pressure,:temperature,:zfactor,:bg, :viscosity)
        end

end
