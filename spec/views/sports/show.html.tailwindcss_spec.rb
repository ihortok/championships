require 'rails_helper'

RSpec.describe "sports/show", type: :view do
  before(:each) do
    @sport = assign(:sport, create(
      :sport,
      name: "Football",
      kind: :team,
      team_size: 11,
      team_total_size: 16
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Football/)
    expect(rendered).to match(/team/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/16/)
  end
end
