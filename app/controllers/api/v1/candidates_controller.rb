class Api::V1::CandidatesController < ApplicationController

  def index
    render json: Candidate.all.sort_by{|c| -c.poll}
  end

  def update
    candidate = Candidate.find(params[:id])
    candidate[params["key"]] = params["value"]
    candidate.save
    render json: candidate
  end

  def reset
    candidate = Candidate.find(params[:id])
    candidate.update(
      fp: 3,
      hc: 3,
      ec: 3,
      im: 3,
      gc: 3
    )
    render json: candidate
  end

end
