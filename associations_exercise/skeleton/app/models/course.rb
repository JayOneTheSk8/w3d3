# == Schema Information
#
# Table name: courses
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Course < ApplicationRecord
  validates :name, presence: true

  has_many :enrollments,
    foreign_key: :course_id,
    primary_key: :id,
    class_name: :Enrollment

  has_many :enrolled_students,
    through: :enrollments,
    source: :student

  belongs_to :prereq,
    foreign_key: :prereq_id,
    primary_key: :id,
    class_name: :Course,
    optional: true
  #why not "has one"?

  belongs_to :instructor,
    foreign_key: :instructor_id,
    primary_key: :id,
    class_name: :User
end
