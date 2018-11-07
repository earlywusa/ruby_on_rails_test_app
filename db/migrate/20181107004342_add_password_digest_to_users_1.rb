class AddPasswordDigestToUsers1 < ActiveRecord::Migration[5.1]
  def change
    add_column :myusers, :password_digest, :string
  end
end
