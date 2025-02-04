class ZebraController < ApplicationController
  def play
    @player_move = params.fetch("player_move")
    @cpu_move = ["rock", "paper", "scissors"].sample
    if @cpu_move == @player_move
      @outcome = "tied"
    elsif (@cpu_move == "paper" && @player_move == "rock") || (@cpu_move == "scissors" && @player_move == "paper") || (@cpu_move == "rock" && @player_move == "scissors")
      @outcome = "lost"
    else @outcome = "won"
    end
    render({:template => "game_templates/play_game"})
  end

  def home 
    render({:template => "game_templates/home"})
  end
end
