class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :nickname, :personality, :hobbies, :catchphrase, :image
end
