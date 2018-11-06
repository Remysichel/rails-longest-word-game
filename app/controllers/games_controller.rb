class GamesController < ApplicationController
  def new
    @letters = generate_grid(10)
  end

  def score
    @word = params[:word]
  end

  private

  def generate_grid(grid_size)
    return Array.new(grid_size) { [*'A'..'Z'].sample }
  end

  def word_cant_built_out
    @word.each do |letter|
      letter == @word.each
    end

  end
end
