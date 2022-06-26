# == Schema Information
#
# Table name: sports
#
#  id              :integer          not null, primary key
#  kind            :integer
#  name            :string
#  team_size       :integer
#  team_total_size :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :sport do
    name { "MyString" }
    kind { 1 }
    team_size { 1 }
    team_total_size { 1 }
  end
end
