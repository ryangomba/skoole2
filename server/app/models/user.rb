class User < ActiveRecord::Base
    
    # uid
    # username
    # first_name
    # last_name
    
    # created_at
    # modified_at
    
    has_and_belongs_to_many :courses
    has_many :posts
    has_many :submissions # may never be accessed
    has_many :resources # may never be accessed
    
    validates_presence_of :username, :first_name, :last_name
    validates_uniqueness_of :uid, :username
    
    def full_name
        "#{first_name} #{last_name}"
    end

end
