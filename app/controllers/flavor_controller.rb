class FlavorController < ApplicationController
    def index
        @flavors = Flavor.all
    end
    def show
        @flavor = Flavor.find(params[:id])
    end
    def new
        @flavor = Flavor.new
    end
    def create
        @flavor = Flavor.create(flavor_params)
        if @flavor.valid?
            redirect_to flavors_path
        else
            redirect_to new_flavors_path
        end
    end
end
