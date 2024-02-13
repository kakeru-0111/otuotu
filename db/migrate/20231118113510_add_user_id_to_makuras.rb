class AddUserIdToMakuras < ActiveRecord::Migration[6.1]
  def change
    add_column :makuras, :user_id, :integer
  end
end
