class CharactersController < ApplicationController
    def index
        characters = Character.all
        render json: CharacterSerializer.new(characters)
    end

    def show
        character = Character.find_by(id: params[:id])
        render json: CharacterSerializer.new(character)
    end

    def create
        character = Character.create(character_params)
        render json: CharacterSerializer.new(character)
    end

     def edit
        byebug
        character = Character.find_by(id: params[:id])
    end

    def update
        byebug
        character = Character.find_by(id: params[:id])
        character.update(character_params)
        render json: CharacterSerializer.new(character)
    end

    def destroy
    end


    private
        def character_params
            params.require(:character).permit(:image, :name, :nickname, :personality, :hobbies, :catchphrase)
        end

end
