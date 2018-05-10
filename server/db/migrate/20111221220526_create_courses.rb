class CreateCourses < ActiveRecord::Migration
    def change
        create_table :courses do |t|
            
            t.string :department
            t.string :number
            t.string :section

            t.timestamps
        
        end
    end
end
