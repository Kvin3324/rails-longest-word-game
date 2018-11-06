class GamesController < ApplicationController
  LETTERS = ("A".."Z").map { |letter| letter }
  def new
    @letters = LETTERS.sample(8)
  end

  def score
    @answer = params[:word]
    @letters = params[:letters]
  end
end
