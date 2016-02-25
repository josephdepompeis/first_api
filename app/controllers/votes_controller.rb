class VotesController < ApplicationController
  def create
    token = params["token"]
    if token
      can = params["candidate_id"]
      token = params["token"]
      votez = Vote.create!(balloter_id: Balloter.where(token: token).first.id, candidate_id: can)

      render json:Vote.find(votez.id)
    else
      render json: "Token is either missing or invalid"
    end
  end

  def destroy
  end

  def index
  end
end
