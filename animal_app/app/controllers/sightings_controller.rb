class SightingsController < ApplicationController

    def index
        sightings = Sighting.all
        # @views = Sighting.where("date >= :start_date AND date <= :end_date",{start_date: params[:start_date], end_date: params[:end_date]})
        # if sightings.valid?
            render json: sightings
        # elsif views.valid?
        #     render json: views 
        # else
        #     rener json: views.errors
    end

    def show
        view = Sighting.find(params[:id])
        render json: view
    end

    def date
        view = Sighting.where("date >= :start_date AND date <= :end_date",{start_date: params[:start_date], end_date: params[:end_date]})
        render json: view
    end

    def create
        view = Sighting.create(view_params)
        if view.valid?
            render json: view
        else
            render json: view.errors
        end
    end
    
    def update
        view = Sighting.find(params[:id])
        view.update(view_params)
        if view.valid?
            render json: view
        else
            render json: view.errors
        end
    end

    def destroy
        view = Sighting.find(params[:id])
        if view.destroy
            render json: view
        else
            render json: view.errors
        end
    end

    private
    
    def view_params
        params.require(:sighting).permit(:wildlife_id, :date, :latitude, :longitude, :start_date, :end_date)
    end

end
