class RemoveContentFromPosts < ActiveRecord::Migration[5.1]
  def change
  	  	remove_column :posts, :content, :string
  end
end
