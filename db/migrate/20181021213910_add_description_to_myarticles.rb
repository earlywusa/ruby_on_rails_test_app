class AddDescriptionToMyarticles < ActiveRecord::Migration[5.1]
  def change
    add_column :myarticles, :description, :text
    add_column :myarticles, :created_at, :datetime
    add_column :myarticles, :updated_at, :datetime
  end
end
