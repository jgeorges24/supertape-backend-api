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



     def create
        mixtape = Mixtape.new(mixtape_params)

        if mixtape.save
            render json: Mixtape.all.to_json(:include => :opinions)
        else
            render json: {error: "error This did not save my bro!"}
        end
    end



    def destroy
        mixtape = Mixtape.find(params[:id])
        mixtape.destroy
        render json: Mixtape.all.to_json(:include => :opinions)
    end




    private 

    def mixtape_params

        params.require(:mixtape).permit(:title, :description, :likes, :artist)

    end


end
