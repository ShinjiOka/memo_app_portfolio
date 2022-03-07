class MemosController < ApplicationController
    def index
        
    end
    
    def new
        
    end
    
    def create
        render plain: params[:title] + ":" + params[:body] + ":" + params[:select_id]
        
    end
    
end
