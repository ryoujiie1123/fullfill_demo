class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.integer :max_seat
      t.integer :phone_number

      t.timestamps
    end
  end
end
