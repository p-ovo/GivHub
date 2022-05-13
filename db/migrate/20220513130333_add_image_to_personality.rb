class AddImageToPersonality < ActiveRecord::Migration[6.1]
  def change
    add_column :personalities, :image, :text
  end
end
