class AddClientRefToPet < ActiveRecord::Migration[7.0]
  def change
    add_reference :pets, :client, null: false, foreign_key: true
  end
end
