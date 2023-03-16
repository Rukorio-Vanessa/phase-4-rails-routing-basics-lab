class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grades = Student.order('grade DESC')
        render json: students_by_grades
    end
    
    #bonus: student with the highest grade
    def highest_grade
        highest = Student.order('grade DESC').first
        render json: highest
    end
end
