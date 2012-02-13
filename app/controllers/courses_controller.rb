class CoursesController < ApplicationController
  def add
    students = current_user.groups[0].students
    course = current_user.groups[0].courses.find_by_id(params[:id])
    data = Date.civil(params[:date][:year].to_i,params[:date][:month].to_i,params[:date][:day].to_i)
    students.each do |student|
      if !params[student.id.to_s].empty?
        grade = Grade.new(value: params[student.id.to_s] , date: data) 
        student.grades << grade
        course.grades << grade
        RaportNote.send_raport(grade).deliver
      else
        absence = Absence.new(date: data) 
        student.absences << absence
        course.absences << absence
        RaportAbsente.send_raport(absence).deliver
      end
    end
  end
  def index
    @courses = current_user.groups[0].courses
    @students = current_user.groups[0].students
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = current_user.groups[0].courses.find(params[:id])
    @students = current_user.groups[0].students
    respond_to do |format|
      format.js
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = current_user.groups[0].courses.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])
    current_user.groups[0].courses << @course
    respond_to do |format|
      if @course.save
        format.js
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.js
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = current_user.groups[0].courses.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to login_index_path, notice: 'Course was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to login_index_url }
      format.json { head :ok }
    end
  end
end
