require 'rails_helper'

RSpec.describe "sports/index", type: :view do
  before(:each) do
    assign(:sports, [
      create(:sport, name: "Football"),
      create(:sport, name: "Basketball")
    ])
  end

  it "renders a list of sports" do
    render
    assert_select "p>span", text: "Football", count: 1
    assert_select "p>span", text: "Basketball", count: 1
  end
end
