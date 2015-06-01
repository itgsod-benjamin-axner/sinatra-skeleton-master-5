class Student
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :grades
  has n, :teachers


end