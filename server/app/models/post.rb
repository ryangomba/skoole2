class Post < ActiveRecord::Base

    # user_id
    # course_id
    
    # text
    
    # created_at
    # modifed_at

    belongs_to :user
    belongs_to :course

    validates_presence_of :user_id, :text

end