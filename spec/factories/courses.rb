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
FactoryBot.define do
  factory :course do
    name { "MyString" }
    desc { "MyString" }
  end
end
