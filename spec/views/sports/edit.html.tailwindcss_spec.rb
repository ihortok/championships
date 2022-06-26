require 'rails_helper'

RSpec.describe "sports/edit", type: :view do
  before(:each) do
    @sport = assign(:sport, Sport.create!(
      name: "MyString",
      kind: 1,
      team_size: 1,
      team_total_size: 1
    ))
  end

  it "renders the edit sport form" do
    render

    assert_select "form[action=?][method=?]", sport_path(@sport), "post" do

      assert_select "input[name=?]", "sport[name]"

      assert_select "input[name=?]", "sport[kind]"

      assert_select "input[name=?]", "sport[team_size]"

      assert_select "input[name=?]", "sport[team_total_size]"
    end
  end
end
