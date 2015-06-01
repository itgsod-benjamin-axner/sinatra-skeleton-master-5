class Teacher
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :uname, String
  property :pwd, BCryptHash

  has n, :students
  has n, :grades
end