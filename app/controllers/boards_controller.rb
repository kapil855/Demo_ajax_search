class BoardsController < ApplicationController
  def index
    @boards = Board.find_each
  end

  def new
    @board = Board.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path
    else
      render new_board_path
    end
  end

  private

  def board_params
    params.require(:board).permit!
  end
end
