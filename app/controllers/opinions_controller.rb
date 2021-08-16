class OpinionsController < ApplicationController

    def create

        opinion = Opinion.new(opinion_params)
        if opinion.save
            render json: Mixtape.all.to_json(:include => :opinions)
        else

        end


    end

    def update
        opinion = Opinion.find(params[:id]) 
        if opinion.update(opinion_params)
            render json: Mixtape.all.to_json(:include => :opinions)
        else
        
        end



    end



private
def opinion_params

    params.require(:opinion).permit(:content, :likes, :mixtape_id)
end


end
