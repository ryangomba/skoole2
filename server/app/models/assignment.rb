class Assignment < ActiveRecord::Base
    
    # course_id
    # grading_category_id
    
    # title
    # description
    # starts_at
    # ends_at
    # weight
    
    # created_at
    # modified_at

    belongs_to :course
    belongs_to :grading_category
    
    has_many :resources
    has_many :submissions
    
    validates_presence_of :course_id, :title, :ends_at, :weight
    
    ############################################################
    
    def to_s
        self.title
    end
    
    def submission(user_id)
        sub = Submission.where(student_id: user_id, assignment_id: self.id)
        sub.empty? ? nil : sub.first
    end

end