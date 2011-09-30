class AddDesignStatusToPages < ActiveRecord::Migration
  def change
    add_column :pages, :design_status, :string
  end
end
