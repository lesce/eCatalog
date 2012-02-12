class StudentsController < ApplicationController
  def add
    @student = current_user.groups[0].students.find_by_id(params[:id])
    @course = current_user.groups[0].courses.find_by_id(params[:courses][:id])
    if params[:grade].empty? 
      x = Absence.create(date: Date.new(params[:date][:year],params[:date][:month],params[:date][:day]))       
      @student.absences << x
      @course.absences << x
    else
      x = Grade.create(value: params[:grade],date: params[:date])
      @student.grades << x
      @course.grades << x
    end
  end
  # GET /students
  # GET /students.json
  def index
    @students = Student.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = current_user.groups[0].students.find(params[:id])

    respond_to do |format|
      format.js
      format.html # show.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/new
  # GET /students/new.json
  def new
    @student = Student.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(params[:student])
    current_user.groups[0].students << @student
    @student.password = "1111111111"
    @student.password_confirmation = "1111111111"
    respond_to do |format|
      if @student.save
        format.js
      else
        format.js
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.json
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to login_index_path, notice: 'Student was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to login_index_url }
      format.json { head :ok }
    end
  end
end
