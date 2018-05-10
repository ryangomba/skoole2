class CreateResources < ActiveRecord::Migration
    def change
        create_table :resources do |t|
        
            t.integer :user_id
            t.integer :course_id
            
            t.string :title
            t.text :description
            t.string :url

            t.timestamps
        
        end
    end
end
