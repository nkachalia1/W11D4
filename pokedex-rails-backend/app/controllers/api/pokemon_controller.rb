class Api::PokemonController < ApplicationController
    def index
    end

    def create
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
    end

    def update
    end

    def destroy
    end
end
