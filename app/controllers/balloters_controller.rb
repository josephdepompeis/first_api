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
      render json:Balloter.where(token: token).first
    else
      render json: "Token is either missing or invalid"
    end
  end

  def update
    if params["token"]
      token = params["token"]
      name = params["name"]
      party = params["party"]
      updated_balloter = Balloter.where(token: token).first
      updated_balloter.name = name unless name == nil
      updated_balloter.party = party unless party == nil
      updated_balloter.save
      render json:Balloter.where(token: token).first
    else
      render json: "Token is either missing or invalid"
    end
  end
end
