class Course < ActiveRecord::Base

  has_many :grades
  has_many :users, through: :grades

  belongs_to :teacher, class_name: "User"

  validates :name, :course_time, :course_week,
            :class_room, :credit, :teaching_type,  
            presence: true, length: {maximum: 50}
  validates :course_type,inclusion: { in: %w(一级学科核心课 一级学科普及课 公共选修课 专业普及课 专业研讨课 专业核心课 公共必修课，公共选修课),
            message: "%{value} is not a valid course type" },presence: true
  validates :exam_type,inclusion: { in: %w( 课堂开卷 闭卷笔试 读书报告 课上讨论，大作业，其他),
            message: "%{value} is not a valid exam type" },presence: true
end
          
