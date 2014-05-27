class StudentsController < ApplicationController
	def index
		@students = Student.all
	end
	def new
		@student = Student.new
	end
	def create
		@student = Student.create(student_params)

		if @student.save
			redirect_to @student
		else
			render 'new'
		end
	end
	def show
		@student = Student.find(params[:id])
		logger.info @student.studentId
		logger.info @student.name
#		logger.debug("debug::" + @student.name)
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])

		if @student.update(student_params)
			redirect_to @student
		else
			render 'edit'
		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy

		redirect_to action: 'index'
	end

	private
  	def student_params
    	params.require(:student).permit(:studentId, :name)
  	end
end
