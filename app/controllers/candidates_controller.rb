class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    render json: Candidate.first
  end

  def create
    # render json:


#   id = params["id"]
# render json:Candidate.find(id)
# http://localhost:3000/candidates/create?id=1
  end
end
