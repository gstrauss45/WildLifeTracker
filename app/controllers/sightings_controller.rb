class SightingsController < ApplicationController
    def new
        @sighting = Sighting.new
    end

    def create
        @animal = Animal.find(params[:animal_id])
        @sighting = @animal.sightings.create(sighting_params)
        redirect_to animal_path(@animal)
    end

    def show
        @sighting = Sighting.find(params[:id])
    end

    def update
        @sighting = Sighting.find(params[:id])
        @animal = Animal.find(@sighting.animal.id)
        if @sighting.update(sighting_params)
            redirect_to animal_path(@animal)
        else
            render :edit
        end
    end

    def destroy
        @animal = Animal.find(params[:animal_id])
        @sighting = @animal.sightings.find(params[:id])
        @sighting.destroy
        redirect_to animal_path(@animal)
    end

    def edit
        @sighting = Sighting.find(params[:id])
        @animal = Animal.find(@sighting.animal.id)
    end

    private
    def sighting_params
      params.require(:sighting).permit(:date, :longitude, :latitude, :region)
    end
end
