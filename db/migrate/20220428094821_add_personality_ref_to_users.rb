class AddPersonalityRefToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :personality, null: false, foreign_key: true
  end
end
