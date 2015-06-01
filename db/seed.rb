class Seeder

def self.seed!
  teachers
  grades
  students
end

  def self.teachers
    Teacher.create(name:"anna",uname: 'Max', pwd: '1234')
    Teacher.create(name:"kalle",uname: 'Kalle', pwd: 'Bananpaj')
  end

  def self.grades
    Grade.create(level: 'C')
    Grade.create(level: 'A')
  end

  def self.students
    Student.create(name: 'A')
    Student.create(name: 'B')

  end
end

