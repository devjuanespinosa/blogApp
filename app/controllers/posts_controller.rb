class PostsController < ApplicationController

    def index
        @articules=Articules.all
    end

    def show
        @articules = Articules.find(params[:id])
    end

    def update
        articules = Aricules.find(params[:id])
        artcules.update(articules_params)
        redirect_to articule
    end

    private
    def gallery_params
        params.require(:gallery).permit(:name,:description, :image, :user)
    end
    
end
