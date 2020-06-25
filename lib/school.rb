require 'pry'
class School
    attr_accessor :student, :roster, :grade    
    def initialize(student)
        @student = student
        @roster = {}
    end 
    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student 
    end
    def grade(student) 
        roster[student]  
    end  
    def sort
        class_roster = {}
        roster.each do |grade, student|
            class_roster[grade] = student.sort  
    
        end
        class_roster 
    end    
end
