class AddKarmaPointsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :karma_points, :int
  end
end
