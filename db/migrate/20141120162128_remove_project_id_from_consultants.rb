class RemoveProjectIdFromConsultants < ActiveRecord::Migration
  def change
    remove_column :consultants, :project_id, :integer
  end
end
