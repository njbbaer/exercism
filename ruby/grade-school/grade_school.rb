class School
  def initialize
    @roster = Hash.new { |h, k| h[k] = [] }
  end

  def add(name, grade)
    @roster[grade].push(name)
    @roster[grade].sort!
  end

  def students(grade)
    @roster[grade]
  end

  def students_by_grade
    @roster.sort.map do |grade, students|
      { grade: grade, students: students }
    end
  end
end

module BookKeeping
  VERSION = 3
end
