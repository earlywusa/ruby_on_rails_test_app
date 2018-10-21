class CreateMyarticles < ActiveRecord::Migration[5.1]
  def change
    create_table :myarticles do |t|
      t.string :title
    end
  end
end
