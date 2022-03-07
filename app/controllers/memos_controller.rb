class MemosController < ApplicationController
    def index
        @memos = Memo.all
    end
    
    def new
        
    end
    
    def create
        memo = Memo.new(title:params[:title], body:params[:body])
        if memo.save
            redirect_to root_path
        else
            redirect_to new_path
        end
        
    end

    def destroy
        memo = Memo.find(params[:id])
        memo.destroy
        redirect_to root_path
    end
    
    
end
