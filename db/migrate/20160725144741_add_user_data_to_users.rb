class AddUserDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :phone_no, :string
    add_column :users, :home_town, :string
    add_column :users, :birth_day, :datetime
    add_column :users, :log_time, :datetime
  end
end
