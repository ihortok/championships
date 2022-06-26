require 'rails_helper'

RSpec.describe "sports/index", type: :view do
  before(:each) do
    assign(:sports, [
      Sport.create!(
        name: "Name",
        kind: 2,
        team_size: 3,
        team_total_size: 4
      ),
      Sport.create!(
        name: "Name",
        kind: 2,
        team_size: 3,
        team_total_size: 4
      )
    ])
  end

  it "renders a list of sports" do
    render
    assert_select "p>span", text: "Name".to_s, count: 2
    assert_select "p>span", text: 2.to_s, count: 2
    assert_select "p>span", text: 3.to_s, count: 2
    assert_select "p>span", text: 4.to_s, count: 2
  end
end
