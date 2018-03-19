class RemoveExpFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :exp, :integer
  end
end
