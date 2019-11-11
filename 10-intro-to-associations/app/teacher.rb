class Teacher < ActiveRecord::Base
    #1:many
    # has_many :students
    #Many to many
    has_many :classrooms
    has_many :students, through: :classrooms
end