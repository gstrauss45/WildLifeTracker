class AnimalsController < ApplicationController
    def home
    end

    def index
        @animals = Animal.all
        @regions = Region.all
    end

    def new
        @animal = Animal.new
    end

    def create
        @animal = Animal.new(animal_params)

        if @animal.save
          redirect_to @animal
        else
          render :new
        end
    end

    def show
        @animal = Animal.find(params[:id])
        @regions = Region.all
    end

    def update
        @animal = Animal.find(params[:id])

        if @animal.update(animal_params)
          redirect_to @animal
        else
          render :edit
        end
    end

    def destroy
        @animal = Animal.find(params[:id])
        @animal.destroy
        redirect_to root_path
    end

    def edit
        @animal = Animal.find(params[:id])
    end

    private
    def animal_params
      params.require(:animal).permit(:name)
    end
end
