class Project < ActiveRecord::Base

    belongs_to :consultant
    belongs_to :customer

    validates :name, presence: true
    validates :description, presence: true
    validates :customer_id, presence: true
    validates :consultant_id, presence: true

end
