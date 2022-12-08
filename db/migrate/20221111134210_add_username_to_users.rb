# frozen_string_literal: true

class AddUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string, unique: true
    add_column :users, :fName, :string
    add_column :users, :lName, :string
  end
end
