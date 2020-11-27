class ListsController < ApplicationController
    before_action :set_board
    
    def new
        @list = @board.lists.new()
        # render partial: "new"
    end


    def create
        @list = @board.lists.create(list_params)
        redirect_to board_path(@board)
    end

    def destroy
        @list = @board.lists.find(params[:id])
        @list.destroy
        redirect_to board_path(@board)

    end

private

def list_params
    params.require(:list).permit(:title, :board_id)
end

def set_board
    @board = current_user.boards.find(params[:board_id])
end

end
