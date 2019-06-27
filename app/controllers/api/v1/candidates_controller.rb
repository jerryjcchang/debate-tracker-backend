class Api::V1::CandidatesController < ApplicationController

  def index
    render json: Candidate.all.sort_by{|c| c.id}
  end

  def update
    candidate = Candidate.find(params[:id])
    candidate[params["key"]] = params["value"]
    candidate.save
    render json: candidate
  end

end
