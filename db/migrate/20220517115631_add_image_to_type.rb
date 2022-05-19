class AddImageToType < ActiveRecord::Migration[6.1]
  def change
    add_column :types, :image, :string
  end
end
