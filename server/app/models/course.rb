class Course < ActiveRecord::Base

    # uid
    # department
    # number
    # section

    # created_at
    # modified_at

    has_and_belongs_to_many :users
    has_and_belongs_to_many :students
    has_and_belongs_to_many :professors
    has_many :grading_categories
    has_many :assignments
    has_many :resources
    has_many :posts

    validates_presence_of :department, :number, :section
    validates_uniqueness_of :section, :scope => [:department, :number]

    def to_s
        "#{self.department} #{self.number}"
    end

end