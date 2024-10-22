class ChangeAvatarInUsers < ActiveRecord::Migration[7.2]
  def change
    change_column(:users, :avatar, :string, default: nil)
  end
end
