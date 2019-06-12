class Change < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :sold, :boolean, :default =>false
  end
end
