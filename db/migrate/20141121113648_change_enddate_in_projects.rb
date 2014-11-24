class ChangeEnddateInProjects < ActiveRecord::Migration
  def change
    change_column :projects, :enddate, :date
  end
end
