# frozen_string_literal: true

# Migration to create the users table.
class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, &:timestamps
  end
end
