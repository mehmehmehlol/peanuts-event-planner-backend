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
        character = Character.create(character_params(:name, :nickname, :personality, :hobbies, :catchphrase, :image))
        byebug
        render json: character
    end

    def update
        character = Character.find(params[:id])
        character.update(character_params)
    end

    def edit
    end

    def destroy
    end

    private
        def character_params
            params.require(:character).permit(*args)
        end

end
