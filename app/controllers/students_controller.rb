class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    @temp = Student.create(first_name: params[:first_name],
                  last_name: params[:last_name])

    redirect_to "/student/#{@temp.id}"
  end

end
