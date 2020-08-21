class ChangeColumnToAllowNull < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :image,:string, null: true
  end
end
