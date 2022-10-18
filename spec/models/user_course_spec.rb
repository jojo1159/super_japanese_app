# == Schema Information
#
# Table name: user_courses
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_courses_on_course_id  (course_id)
#  index_user_courses_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (course_id => courses.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe UserCourse, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
