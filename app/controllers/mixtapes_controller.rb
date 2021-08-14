class MixtapesController < ApplicationController

    def index
        mixtapes = Mixtape.all
        render json: mixtapes.to_json(:include => :opinions)


    end


    def update

        mixtape = Mixtape.find(params[:id])

        if mixtape.update(mixtape_params)
            render json: Mixtape.all.to_json(:include => :opinions)
        else
            render json: {error: "This wasnt good, try again"}
        end


    end

    # def create
        


    # end

    # def destroy


    # end




    private 

    def mixtape_params

        params.require(:mixtape).permit(:title, :description, :likes, :artist, :genre, :dislikes)

    end


end
