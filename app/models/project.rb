class Project < ActiveRecord::Base

    belongs_to :customer
    belongs_to :consultant

    validates :project_id, presence: true
    validates :consultant_id, presence: true

end
