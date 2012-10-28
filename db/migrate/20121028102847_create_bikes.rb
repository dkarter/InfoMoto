class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.integer :mileage

      t.timestamps
    end
  end
end
