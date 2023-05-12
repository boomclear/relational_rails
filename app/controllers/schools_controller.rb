class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def child_index
    @school = School.find(params[:id])
    @students = Student.where(school_id: params[:id])
  end
end
