class AddImgUrlAndPersonalityTraitToRoles < ActiveRecord::Migration[6.0]
  def change
    add_column :roles, :img_url, :string
    add_column :roles, :personality_trait, :string
  end
end
