
class School
   attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if !roster[grade]
            roster[grade] = []
        end
        roster[grade] << student_name
    end

    def grade(grade)
        roster.each do |k, v|
            if k == grade
                return v
            end
        end       
    end

    def sort
        sorted_roster = {}
        roster.each do |k, v|
            sorted_roster[k] = v.sort
        end
        sorted_roster
    end
end