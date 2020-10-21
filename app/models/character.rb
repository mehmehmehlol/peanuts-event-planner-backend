class Character < ApplicationRecord
    has_many :character_activities
    has_many :activities, through: :character_activities
end
