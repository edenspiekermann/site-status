class AddOrderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :order, :int
  end
end
