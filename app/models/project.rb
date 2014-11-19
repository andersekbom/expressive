class Project < ActiveRecord::Base
    belongs_to :customer
    has_one :consultant
end
