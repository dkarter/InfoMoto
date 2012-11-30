class ChangeRideTimeToDate < ActiveRecord::Migration
  def up
    change_column :rides, :start, :datetime
    change_column :rides, :end, :datetime
  end

  def down
    change_column :rides, :start, :time
    change_column :rides, :end, :time
  end
end
