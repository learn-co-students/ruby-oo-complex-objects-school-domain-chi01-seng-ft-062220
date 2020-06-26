#require 'pry'
class School
    attr_accessor :roster, :name  

    def initialize (name)
        @roster = {} 
        @name = name 
    end 

    def add_student (name, grade)
       if @roster[grade] == nil
        @roster[grade] = []
        end 
    @roster[grade] << name 
    end     

    def grade(grade)
        @roster[grade]
    end 
    def sort 
        @roster.map do |grade,student|
            student.sort!
        end
       # binding.pry
        @roster
    end

end 