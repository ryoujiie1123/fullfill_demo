class CreateMatchings < ActiveRecord::Migration[5.1]
  def change
    create_table :matchings do |t|
      t.integer :client_id
      t.integer :user_id
      t.integer :seet_id
      t.integer :status

      t.timestamps
    end
  end
end
