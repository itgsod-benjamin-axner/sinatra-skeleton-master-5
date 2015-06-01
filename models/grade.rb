class Grade
  include DataMapper::Resource

  property :id, Serial
  property :level, String
  property :course, String

  belongs_to :student
  belongs_to :teacher

end
