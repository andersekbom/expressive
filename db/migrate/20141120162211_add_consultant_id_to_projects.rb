class AddConsultantIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :consultant_id, :integer
  end
end
