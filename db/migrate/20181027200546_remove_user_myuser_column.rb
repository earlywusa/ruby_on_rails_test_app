class RemoveUserMyuserColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :myarticles, :myuser_id
    # remove_column :myarticle, :user_id
  end
end
