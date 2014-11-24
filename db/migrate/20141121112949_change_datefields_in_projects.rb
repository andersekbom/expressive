class ChangeDatefieldsInProjects < ActiveRecord::Migration
  def change
    change_column :projects, :startdate, :date
    change_column :projects, :startdate, :date
  end
end
