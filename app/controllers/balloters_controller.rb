require 'securerandom'

class BallotersController < ApplicationController
  def create
    name = params["name"]
    party = params["party"]
    balloterexample = Balloter.create!(name: name, party: party, token: SecureRandom.hex)
    render json:balloterexample
  end

  def show
    if params["token"]
      token = params["token"]
      render json:Balloter.where(token: token)
    else
      render json: "Token is either missing or invalid"
    end

  end

  def update
    if params["token"]
      token = params["token"]

  end
end
