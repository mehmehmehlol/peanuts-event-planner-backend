class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :image, :name, :nickname, :personality, :hobbies, :catchphrase, :activities
end
