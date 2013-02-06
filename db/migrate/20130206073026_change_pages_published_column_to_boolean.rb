class ChangePagesPublishedColumnToBoolean < ActiveRecord::Migration
  def up
    change_column :pages, :published, :boolean
  end

  def down
    change_column :pages, :published, :string
  end
end
