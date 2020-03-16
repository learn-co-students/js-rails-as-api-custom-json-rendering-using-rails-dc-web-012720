class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: @birds #hi
  end
end