class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.date :dob
      t.string :city
      t.string :street
      t.string :state
      t.integer :years_riding

      t.timestamps
    end
  end
end
