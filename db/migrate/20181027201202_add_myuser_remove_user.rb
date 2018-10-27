class AddMyuserRemoveUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :myarticles, :user_id
    add_column :myarticles, :myuser_id, :integer
  end
end
