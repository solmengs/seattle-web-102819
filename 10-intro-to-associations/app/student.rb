class Student < ActiveRecord::Base
    #1:many
    # belongs_to :teacher
    #Many to many
    has_many :classrooms
    has_many :teachers, through: :classrooms
end