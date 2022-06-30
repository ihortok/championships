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
    name { Faker::Hipster.unique.word }
    kind { :team }
    team_size { 5 }
    team_total_size { 9 }
  end
end
