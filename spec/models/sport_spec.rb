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
require 'rails_helper'

RSpec.describe Sport, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
