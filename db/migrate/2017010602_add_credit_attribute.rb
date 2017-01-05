class AddCreditAttribute < ActiveRecord::Migration
    def change
     add_column :courses, :course_period, :integer
     add_column :courses, :course_credit, :integer
   end
end