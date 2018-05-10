class CreateAssignments < ActiveRecord::Migration
    def change
        create_table :assignments do |t|

            t.integer :course_id
            t.integer :grading_category_id
            
            t.string :title
            t.text :description
            t.datetime :starts_at
            t.time :ends_at
            t.float :weight

            t.timestamps
        
        end
    end
end
