class TasksController < ApplicationController
    def new
        @list = List.find(params[:list_id])
        render partial: "tasks/new"
    end

    def create
        @list = List.find(params[:list_id])
        @task = @list.tasks.create(task_params)
        @board = @list.board_id
        redirect_to board_path(@board)
    end

    def edit
        @list = List.find(params[:list_id])
        @task = @list.tasks.find(params[:id])
    end

    def update
        @list = List.find(params[:list_id])
        @task = @list.tasks.update(task_params)
        @board = @list.board_id
        
        redirect_to board_path(@board)

    end

    def destroy
        @list = List.find(params[:list_id])
        @task = @list.tasks.find(params[:id])
        @board = @list.board_id
        @task.destroy
        redirect_to board_path(@board)
    end

private

def task_params
    params.require(:task).permit(:title, :description, :list_id)
end

end
