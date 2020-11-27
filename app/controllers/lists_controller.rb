class ListsController < ApplicationController
    
    def new
        @board = current_user.boards.find(params[:board_id])
        @list = @board.lists.new()
    end


    def create
        @board = current_user.boards.find(params[:board_id])
        @list = @board.lists.create(list_params)
        redirect_to board_path(@board)
    end

private

def list_params
    params.require(:list).permit(:title, :board_id)
end


end
