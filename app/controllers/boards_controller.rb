class BoardsController < ApplicationController

def index
    @boards = Board.all
end


def new
    @board = Board.new
end

def create
    clean_params = params.require(:board).permit(:tittle) 
    @board = Board.new(clean_params)
    
        if @board.save
        redirect_to "/boards", notice: '成功新增看板'
    else
        render :new
    end
end

def show
    @board = Board.find(params[:id])
end

def edit #編輯
    @board = Board.find(params[:id])
end

def update
    @board = Board.find(params[:id])
    clean_params = params.require(:board).permit(:tittle) 
    
    if @board.update(clean_params)

    redirect_to root_path, notice: '更新成功'
    else
        render :edit
    end
    
end

def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to root_path, notice: '看板已刪除'
end



end
