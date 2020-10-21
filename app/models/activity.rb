class Activity < ApplicationRecord
    belongs_to :event
    has_many :character_activities
    has_many :characters, through: :character_activities
end
