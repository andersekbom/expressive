class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :firstname
      t.string :lastname
      t.references :project, index: true
      t.timestamps
    end
  end
end
