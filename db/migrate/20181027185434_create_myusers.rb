class CreateMyusers < ActiveRecord::Migration[5.1]
  def change
    create_table :myusers do |t|
      t.string :username
      t.string :email
      t.timestamps
    end
  end
end
