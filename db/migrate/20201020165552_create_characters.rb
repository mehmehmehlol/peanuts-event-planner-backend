class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :nickname
      t.string :personality
      t.string :hobbies
      t.string :catchphrase
      t.string :image

      t.timestamps
    end
  end
end
