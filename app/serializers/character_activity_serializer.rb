class CharacterActivitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :activity_id, :character_id
end
