class AssignmentsController < ApplicationController

    before_filter :before
    def before
        @course_id = params[:course_id]
        @course = Course.find_by_id(@course_id)
        @course_module = "assignments"
    end

    ############################################################

    def index
        if @course_id == "all"
            @assignments = Assignment.all
        else
            @assignments = Assignment.where(course_id: @course_id)
        end
    end

    def show
        #
    end

end