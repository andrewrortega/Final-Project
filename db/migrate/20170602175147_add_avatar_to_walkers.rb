class AddAvatarToWalkers < ActiveRecord::Migration[5.0]
  def change
    add_column :walkers, :avatar, :string
  end
end
