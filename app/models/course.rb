# == Schema Information
#
# Table name: courses
#
#  id         :bigint           not null, primary key
#  desc       :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Course < ApplicationRecord
  has_many :user_courses
  has_many :users, through: :user_courses
end
