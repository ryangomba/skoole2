class Resource < ActiveRecord::Base
    
    # owner_id
    
    # title
    # url
    
    # created_at
    # modified_at

    #belongs_to :owner
    
    validates_presence_of :title, :url
    
    ############################################################

end