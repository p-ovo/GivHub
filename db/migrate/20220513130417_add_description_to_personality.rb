class AddDescriptionToPersonality < ActiveRecord::Migration[6.1]
  def change
    add_column :personalities, :description, :text
  end
end
