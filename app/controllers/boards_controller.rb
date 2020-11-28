class BoardsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy]

  def index
    @boards = current_user.boards.all
  end

  def show
    @lists = @board.lists.all
    
    # @list = show_lists_for_selected_board(user_id, board_id)
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
