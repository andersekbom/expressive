class Consultant < ActiveRecord::Base
    
    has_many :projects

    def full_name
        "#{firstname} #{lastname}"
    end

end
