class CreateUserGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :user_groups do |t|
      t.string :name

      t.timestamps
    end
    UserGroup.create(name: "Admin")
    UserGroup.create(name: "User")
  end
end
