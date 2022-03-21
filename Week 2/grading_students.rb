def gradingStudents(grades)
    grades.map do |grade|
        if grade < 38
            grade
        elsif (grade + 1 ) % 10 == 5 || (grade + 1 ) % 10 == 0
            grade + 1
        elsif (grade + 2 ) % 10 == 5 || (grade + 2 ) % 10 == 0
            grade + 2
        else
            grade
        end
    end
end