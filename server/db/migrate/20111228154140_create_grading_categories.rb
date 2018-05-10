class CreateGradingCategories < ActiveRecord::Migration
    def change
        create_table :grading_categories do |t|
        
            t.integer :course_id
            
            t.string :title
            t.float :weight

            t.timestamps
        
        end
    end
end
