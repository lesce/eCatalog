class CatalogsController < ApplicationController
  def index
    @students = current_user.groups[0].students
  end
  def show
    grade_sum = []
    courses = current_user.groups[0].courses.collect  { |x| x.id }
    all_grades = Grade.order('date').where(course_id:courses)
    grades = Grade.order('date').where(course_id:courses).select('distinct date')
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column("string","Data")
    data_table.new_column("number","Graficul Mediilor per clasa")
    data_table.add_rows(grades.size)
    aux = 0
    grades.each do |grade|
      grade_sum = all_grades.where(date: grade.date).collect { |x| x.value }
      grade_average = grade_sum.sum/grade_sum.size rescue 0
      data_table.set_cell(aux,0,grade.date.to_s)
      data_table.set_cell(aux,1,grade_average.to_f)
      aux += 1
    end
    opts   = { :width => 800, :height => 380, :title => 'Grafic note per intreaga clasa', :legend => 'bottom' }
    @chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)
    absence_sum = []
    courses1 = current_user.groups[0].courses.collect  { |x| x.id }
    all_absences = Absence.order('date').where(course_id:courses)
    absence = Absence.order('date').where(course_id:courses).select('distinct date')
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column("string","Data")
    data_table.new_column("number","Graficul Absentelor per clasa")
    data_table.add_rows(absence.size)
    aux = 0
    absence.each do |absence|
      absence_sum = all_absences.where(date: absence.date).collect { |x| 1 }
      absence_sum = absence_sum.sum
      data_table.set_cell(aux,0,absence.date.to_s)
      data_table.set_cell(aux,1,absence_sum.to_i)
      aux += 1
    end
    opts   = { :width => 800, :height => 380, :title => 'Grafic absente per intreaga clasa', :legend => 'bottom' }
    @chart1 = GoogleVisualr::Interactive::LineChart.new(data_table, opts) 
  end
end
