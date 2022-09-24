class BirdsController < ApplicationController
  wrap_parameters format: []

  # GET /birds
  def index
    birds = Bird.all
    render json: birds
  end

  # POST /birds
  def create
    bird = Bird.create(bird_params)
    render json: bird, status: :created
  end

  # other controller actions here
  def destroy
    bird = Bird.find(params[:id])
    bird.destroy
    render json: {"bird": "deleted"}
  end
  private
  # all methods below here are private

  def bird_params
    params.permit(:name, :species)
  end
  
  

end
