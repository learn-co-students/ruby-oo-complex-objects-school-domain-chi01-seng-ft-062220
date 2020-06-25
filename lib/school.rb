require 'pry'

class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    def name
        @name
    end
    def roster
        @roster
    end
    def add_student(student_name, grade)
        @roster[grade] ||= [] 
        @roster[grade] << student_name
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        # @roster.sort.to_h
        sorted = {}
        @roster.sort.each do |grade, mates|
            sorted[grade] = mates.sort
        end
        sorted
    end
end

