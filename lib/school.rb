# code here!

class School

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    
    def school_name
        @school_name
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if roster[grade]
            @roster[grade] << student_name
        else
            roster[grade] = [student_name]
        end
    end

    def grade(grade)
        return roster[grade]
    end

    def sort
       sorted = {}
       @roster.each do |grade, students|
        sorted[grade] = students.sort
        end
        sorted
    end

end