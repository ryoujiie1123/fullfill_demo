class CreateSeets < ActiveRecord::Migration[5.1]
  def change
    create_table :seets do |t|
      t.integer :client_id
      t.integer :remain_seat

      t.timestamps
    end
  end
end
