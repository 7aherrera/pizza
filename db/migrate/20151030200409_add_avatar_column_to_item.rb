class AddAvatarColumnToItem < ActiveRecord::Migration
  def up
    add_attachment :ingredients, :avatar
  end

  def down
    remove_attachment :ingredients, :avatar
  end
end
