class RegionsController < ApplicationController
    def index
        @regions = Region.all
    end

    def new
        @region = Region.new
    end

    def create
        @region = Region.new(region_params)

        if @region.save
          redirect_to '/regions'
        else
          render :new
        end
    end

    def show
        @region = Region.find(params[:id])
    end

    def update
        @region = Region.find(params[:id])

        if @region.update(region_params)
          redirect_to '/regions'
        else
          render :edit
        end
    end

    def destroy
        @region = Region.find(params[:id])
        @region.destroy
        redirect_to '/regions'
    end

    def edit
        @region = Region.find(params[:id])
    end

    private
    def region_params
      params.require(:region).permit(:name)
    end
end
