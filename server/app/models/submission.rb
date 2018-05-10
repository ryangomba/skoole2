class Submission < ActiveRecord::Base
    
    # assignment_id
    # student_id
    
    # text
    # grade
    
    # created_at
    # modified_at

    belongs_to :assignment
    belongs_to :student
    
    has_many :resources
    
    validates_presence_of :text
    
    ############################################################
    
    def graded?
        puts "BOOM"
        puts "HEY!", self.grade
        !self.grade.nil?
    end

end