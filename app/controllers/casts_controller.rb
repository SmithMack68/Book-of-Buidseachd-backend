class CastsController < ApplicationController
    
    def create 
        @cast = Cast.create!(cast_params)
        render json: @cast, status: :created
    end


    private

    def cast_params
        params.permit(:user_id, :spell_id)
    end
end
