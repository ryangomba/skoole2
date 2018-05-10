class GradingCategory < ActiveRecord::Base
    
    # course_id
    
    # title
    # weight
    
    # created_at
    # modified_at

    belongs_to :course
    
    has_many :assignments
    
    validates_presence_of :title, :weight
    
    ############################################################

end