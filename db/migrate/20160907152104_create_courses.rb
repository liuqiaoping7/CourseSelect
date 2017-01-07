class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|

      t.string :name
      t.string :course_code
      t.string :course_type
      t.string :teaching_type
      t.string :exam_type
    #delete t.string :credit
      t.integer :limit_num
      t.integer :student_num, default: 0
      t.float :average, default: 0.0
      t.string :class_room
      t.string :course_time
      t.string :course_week
      t.boolean :degree_course, default: false
      
      
     t.integer :week_begin, default: 1
     t.integer :week_end, default: 20
     t.integer :time_begin, default: 1
     t.integer :time_end, default: 2
     
     #add new attribute&&normalize the attributes' name 
     t.integer :weekday,default: 1 #1
     t.integer :period, default: 40 #2
     t.float :credit, default: 3#3
     t.boolean :open, default: true
     
     t.belongs_to :teacher
     t.timestamps null: false
    end
  end
end
