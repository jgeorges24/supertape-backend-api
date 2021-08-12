class MixtapesController < ApplicationController

    def index
        mixtapes = Mixtape.all
        render json: mixtapes.to_json(:include => :opinions)


    end







    

end
