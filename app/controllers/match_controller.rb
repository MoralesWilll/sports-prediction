class MatchController < ApplicationController
  private
  def set_match
    @match = Partido.friendly.find(params[:id])
  end
end
