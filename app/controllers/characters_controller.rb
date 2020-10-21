class CharactersController < ApplicationController
    def index
        characters = Character.all
        render json: CharacterSerializer.new(characters)
    end

    def show
        character = Character.find(id: params[:id])
        render json: CharacterSerializer.new(character)
    end

    def create
    end

    def update
    end

    def destroy
    end

end
