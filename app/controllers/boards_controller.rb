class BoardsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy]

  def index
    @boards = current_user.boards.all
    @boards_sql = Board.all_boards(current_user.id)
  end

  def show
    @lists = @board.lists.all
    @lists_sql = Board.show_lists_for_selected_board(current_user.id, params[:id])
  end

  def edit
  end

  def update
    
    if @board.update(board_params)
      redirect_to boards_path
    else
      render :edit
    end
  end

  def new
    @board = current_user.boards.new
  end

  def create
    @board = current_user.boards.create(board_params)
    redirect_to boards_path
    
  end

  def destroy
    @board.destroy
    redirect_to boards_path
  end

  private

  def set_id
    @board = current_user.boards.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:title, :user_id)
  end

end
