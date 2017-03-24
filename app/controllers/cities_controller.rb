class CitiesController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @cities = City.all.includes(:prefecture)
    respond_with @cities,
                 include: {
                   prefecture: {
                     include: { district: { only: :name } },
                     only: :name
                   }
                 },
                 only: [:id, :name, :designated, :area, :population]
  end

  def show
    @city = City.find(params[:id])
  end
end
