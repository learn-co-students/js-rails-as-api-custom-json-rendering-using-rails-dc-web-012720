class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
    # @birds
  end
  def show
    bird = Bird.find_by(id: params[:id])
    if bird 
      render json: bird, only: [:id, :name, :species]
    else 
      render json: {message: "Bird not found"}
    end
    # bird.slice(:id, :name, :species)
    # { 
    #   id: bird.id,
    #   name: bird.name,
    #   species: bird.species 
    # }
  end
end