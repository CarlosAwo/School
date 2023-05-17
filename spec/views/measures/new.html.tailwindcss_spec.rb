require 'rails_helper'

RSpec.describe "measures/new", type: :view do
  before(:each) do
    assign(:measure, Measure.new(
      name: "MyString",
      value: 1.5,
      command: nil
    ))
  end

  it "renders new measure form" do
    render

    assert_select "form[action=?][method=?]", measures_path, "post" do

      assert_select "input[name=?]", "measure[name]"

      assert_select "input[name=?]", "measure[value]"

      assert_select "input[name=?]", "measure[command_id]"
    end
  end
end
