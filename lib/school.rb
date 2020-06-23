# code here!

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :name
    attr_accessor :roster

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |k, v|
          sorted[k] = v.sort
        end
        sorted
      end
end