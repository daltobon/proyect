class AddColumnsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :size, :string
    add_column :products, :legacy_code, :string
    add_column :products, :available, :boolean
  end
end
