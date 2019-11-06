class AddGroupToUserYetEntries < ActiveRecord::Migration[5.2]
  def change
    @user_group = UserGroup.where(name: "User").first

    User.all.each do |user|
      user.user_group = @user_group
      user.save
    end

  end
end
