class Add < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :published, :boolean
  end
end
