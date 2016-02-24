class VotesController < ApplicationController
  def create
      bal = params["balloter"]
      can = params["candidate"]
      # candi = Candidate.create!(name: name, hometown: hometown, district: district, party: party)
      votez = Vote.create!(balloter_id: bal, candidate_id: can)
      render json:votez
  # http://localhost:3000/candidates/create?name=boner&hometown=boner&district=boner&party=boner
  end

  def destroy
  end

  def index
  end
end
