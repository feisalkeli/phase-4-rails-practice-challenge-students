class Student < ApplicationRecord
  belongs_to :instructor
  validates :name, presence:true
  validates :major,presence:true
  validates :age, length: {minimum:18}

end
