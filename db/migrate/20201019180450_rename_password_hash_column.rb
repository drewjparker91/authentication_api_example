class RenamePasswordHashColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password_has, :password_hash
  end
end
