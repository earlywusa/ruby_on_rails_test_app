class AddUserIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :myarticles, :myuser_id, :integer
  end
end
