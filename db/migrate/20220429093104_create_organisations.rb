class CreateOrganisations < ActiveRecord::Migration[6.1]
  def change
    create_table :organisations do |t|
      t.string :name
      t.text :url
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
