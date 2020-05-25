class AddImageNoNameToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :image_name, :string
  end
end
