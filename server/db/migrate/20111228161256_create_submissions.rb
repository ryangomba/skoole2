class CreateSubmissions < ActiveRecord::Migration
    def change
        create_table :submissions do |t|
            
            t.integer :assignment_id
            t.integer :student_id
            
            t.text :text
            t.float :grade

            t.timestamps
        
        end
    end
end
