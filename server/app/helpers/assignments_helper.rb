module AssignmentsHelper

    def sort_by_status(assignments, user_id)
        sorted = {}
        overdue = []
        upcoming = []
        completed = []
        graded = []
        assignments.each do |a|
            sub = a.submission(user_id)
            puts "HEY THERE", sub
            if sub && sub.graded?
                graded << [a, "#{sub.grade} / #{a.weight}"]
            elsif sub && a.ends_at < Time.now
                completed << [a, a.weight]
            elsif a.ends_at < Time.now
                overdue << [a, timenote(a.ends_at)]
            else
                upcoming << [a, timenote(a.ends_at)]
            end
        end
        sorted[:Overdue] = overdue unless overdue.empty?
        sorted[:Unfinished] = upcoming unless upcoming.empty?
        sorted[:Completed] = completed unless completed.empty?
        sorted[:Graded] = graded unless graded.empty?
        sorted
    end
    
end