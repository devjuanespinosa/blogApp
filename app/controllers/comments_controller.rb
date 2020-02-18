class CommentsController < ApplicationController

    def create 
        @articules = Articules.find(params[:articules_id])
        @comment = @articules.comments.create(params[:comment].permit(:user, :comment))
        redirect_to post_path(@articules)
    end
    
    def destroy 
        @articules = Articules.find(params[:articules_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to articules_id(@articules)
    end

end
