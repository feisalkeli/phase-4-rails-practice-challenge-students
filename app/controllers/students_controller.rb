class StudentsController < ApplicationController
  #Get All Students 
  def index 
    students = Student.all 
    render json: students
  end
  #Get Student by ID
  def show
    student = Student.find(params[:id])
    if student 
      render json: student, status: :ok
    else
      render json:{mesage:"Student not Found"}
  end
end
#Create Student
def create 
  student= Student.create(student_parameters)
  if student
    render json: student, status: :created
  else
    render json: {message: "Student not created"}
  end

end
#Update Student
def update
  student = Student.find(params[:id])
  if student
    student.update(student_parameters)
    render json: student, status: :ok
  else
    render json: {message: "Student not found"}
  end
  end
  #Delete Student
  def destroy
    student = Student.find(params[:id])
    if student
      student.destroy
      render json: {message: "Student deleted"}
    end
  end
private 
def student_parameters 
  params.permit(:name,:major,:age)
end
end



