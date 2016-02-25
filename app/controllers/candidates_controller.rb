class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    id = params["id"]
    render json:Candidate.find(id)
  end

  def create
    party = params["party"]
    district = params["district"]
    hometown = params["hometown"]
    name = params["name"]
    candi = Candidate.create!(name: name, hometown: hometown, district: district, party: party)
    render json:Candidate.find(candi.id)

# http://localhost:3000/candidates/create?name=boner&hometown=boner&district=boner&party=boner
  end
end
