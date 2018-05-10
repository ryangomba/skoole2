class CreateSubmissions < ActiveRecord::Migration
    def change
        create_table :submissions do |t|
        
            t.integer :user_id
            t.integer :assignment_id
            t.integer :submission_id
            
            t.text :text

            t.timestamps
        
        end
    end
end
