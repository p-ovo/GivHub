class CreateArchetypes < ActiveRecord::Migration[6.1]
  def change
    create_table :archetypes do |t|
      t.references :personality, null: false, foreign_key: true
      t.references :trait, null: false, foreign_key: true

      t.timestamps
    end
  end
end
