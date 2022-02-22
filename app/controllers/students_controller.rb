class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    ordered = Student.all.order(grade: :desc)
    render json: ordered
  end

  def hightest_grade
    highest = Student.all.order(grade: :desc).limit(1)
    render json: highest
  end
end
