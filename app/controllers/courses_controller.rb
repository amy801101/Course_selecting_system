class CoursesController < ApplicationController
	def index
		@course = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.create(course_params)
		@course.save
		redirect_to @course
	end

	def show
		@course = Course.find(params[:id])
		
	end

	def update
		@course = Course.find(params[:id])		
		redirect_to @course
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy

		redirect_to action: 'index'
	end

	private
	def course_params
		params.require(:course).permit(:course_id, :name, :day, :time, :total_student, :note)
	end
end
