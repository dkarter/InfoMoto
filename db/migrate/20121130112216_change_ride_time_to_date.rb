class ChangeRideTimeToDate < ActiveRecord::Migration
  def change
    remove_column :rides, :start
    remove_column :rides, :end
    add_column :rides, :start, :datetime
    add_column :rides, :end, :datetime
  end
end
