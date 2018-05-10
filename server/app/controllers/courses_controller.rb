class CoursesController < ApplicationController

    before_filter :before
    def before
        @course_id = params[:id]
        @course = Course.find_by_id(@course_id)
    end
    
    ############################################################

    def index
        @posts = Post.all
        @new_post = Post.new
    end
    
    def show
        if @course_id == 'all'
            @posts = Post.all
        else
            @course = Course.find_by_id(@course_id)
            @posts = Post.where(course_id: @course_id)
        end
        @new_post = Post.new
    end

end