class CreateTakings < ActiveRecord::Migration[5.1]
  def change
    create_table :takings do |t|
      t.integer :client_id
      t.integer :user_id
      t.integer :seet_id
      t.integer :seet_number

      t.timestamps
    end
  end
end
