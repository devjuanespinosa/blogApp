class HomeController < ApplicationController

    def index
        @articles = Articles.all 
    end

    def show
        @articles = Articles.find(params[:id]) #encontrar los elementos por su id/GET
    end

    def update #actualizar el dato de la tabla 
        @articles = Articles.find(params[:id])
        articles.update(articles_params)
        redirect_to "/home#index"
    end
    
    
    private
    #use callbacks to share setup or contraints between actions.
    def set_post 
        @articles= Articles.find(params[:id])    
    end

    # Never trust parameters from the scary internet, only allow the write list through
    def articles_params
        params.require(:post)
    end

end