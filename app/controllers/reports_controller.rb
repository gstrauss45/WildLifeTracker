class ReportsController < ApplicationController
    def index
    end

    def generate
        @test = params[:start]
        @animals = Animals.all
        @animals.sightings
        redirect_to index
    end
    private
    def generate_params
        params.require(:report).permit(:start, :end)
    end

end
