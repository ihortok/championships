require 'rails_helper'

RSpec.describe "sports/new", type: :view do
  before(:each) do
    assign(:sport, Sport.new(
      name: "MyString",
      kind: 1,
      team_size: 1,
      team_total_size: 1
    ))
  end

  it "renders new sport form" do
    render

    assert_select "form[action=?][method=?]", sports_path, "post" do

      assert_select "input[name=?]", "sport[name]"

      assert_select "input[name=?]", "sport[kind]"

      assert_select "input[name=?]", "sport[team_size]"

      assert_select "input[name=?]", "sport[team_total_size]"
    end
  end
end
