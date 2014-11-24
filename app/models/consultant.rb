class Consultant < ActiveRecord::Base
    
    has_many :projects
    validates :firstname, presence: :true
    validates :lastname, presence: :true

    def full_name
        "#{firstname} #{lastname}"
    end

end
