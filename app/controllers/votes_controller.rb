class VotesController < ApplicationController
  def create
      bal = params["balloter_id"]
      can = params["candidate_id"]
      # candi = Candidate.create!(name: name, hometown: hometown, district: district, party: party)
      votez = Vote.create!(balloter_id: bal, candidate_id: can)
      # render json:votez
      render json:Vote.find(votez.id)

      # 
      # json:Candidate.find(candi.id)
  # http://localhost:3000/candidates/create?name=boner&hometown=boner&district=boner&party=boner
  end

  def destroy
  end

  def index
  end
end
