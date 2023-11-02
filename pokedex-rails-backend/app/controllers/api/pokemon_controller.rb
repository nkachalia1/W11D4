class Api::PokemonController < ApplicationController
    def index
        @pokemon = Pokemon.all 
        render json: @pokemon 
    end

    def create
        pokemon = Pokemon.new(pokemon_params)

        if pokemon.save 
            render json: pokemon 
        else
            render json: pokemon.errors.full_messages, status: 422  
        end 
    end

    def types
        types = [
            "fire",
            "electric",
            "normal",
            "ghost",
            "psychic",
            "water",
            "bug",
            "dragon",
            "grass",
            "fighting",
            "ice",
            "flying",
            "poison",
            "ground",
            "rock",
            "steel"
          ]

        render json: types
    end

    def show
        pokemon = Pokemon.find(params[:id])
        render json: pokemon 
    end

    # def update
    # end

    # def destroy
    # end

    def pokemon_params 
        params.require(:pokemon).permit(:number, :name, :attack, :defense, :poke_type, :image_url, :captured)
    end 
end
