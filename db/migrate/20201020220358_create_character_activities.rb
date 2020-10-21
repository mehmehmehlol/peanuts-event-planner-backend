class CreateCharacterActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :character_activities do |t|
      t.belongs_to :activity, null: false, foreign_key: true
      t.belongs_to :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
