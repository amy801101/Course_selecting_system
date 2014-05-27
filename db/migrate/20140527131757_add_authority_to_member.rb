class AddAuthorityToMember < ActiveRecord::Migration
  def change
  	add_column :members, :authority, :integer
  end
end
