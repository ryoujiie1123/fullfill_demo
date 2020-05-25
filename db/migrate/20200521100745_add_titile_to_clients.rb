class AddTitileToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :title, :string
  end
end
