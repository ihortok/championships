require 'rails_helper'

RSpec.describe "sports/show", type: :view do
  before(:each) do
    @sport = assign(:sport, Sport.create!(
      name: "Name",
      kind: 2,
      team_size: 3,
      team_total_size: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
