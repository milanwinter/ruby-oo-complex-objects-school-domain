require 'pry'
class School

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def roster
       @roster
    end

    def add_student(student,grade)
       if @roster[grade]
        @roster[grade] << student
       else
        @roster[grade] = []
        @roster[grade] << student
       end
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        a_new_hash = @roster.inject({}) { |h, (k, v)| h[k] = v.sort; h } 
    end
end