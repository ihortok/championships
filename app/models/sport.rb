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
class Sport < ApplicationRecord
  enum kind: %i[solo team]

  # validations
  validates :name, :kind, presence: true
  with_options if: :team? do
    validates :team_size, :team_total_size, presence: true
    validate :team_total_size_is_greater_than_or_equal_to_team_size
  end

  private

  def team_total_size_is_greater_than_or_equal_to_team_size
    return unless team_total_size && team_size
    return if team_total_size >= team_size

    errors.add(:team_total_size, :greater_than_or_equal_to_team_size)
  end
end
