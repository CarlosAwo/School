require 'rails_helper'

RSpec.describe "measures/edit", type: :view do
  let(:measure) {
    Measure.create!(
      name: "MyString",
      value: 1.5,
      command: nil
    )
  }

  before(:each) do
    assign(:measure, measure)
  end

  it "renders the edit measure form" do
    render

    assert_select "form[action=?][method=?]", measure_path(measure), "post" do

      assert_select "input[name=?]", "measure[name]"

      assert_select "input[name=?]", "measure[value]"

      assert_select "input[name=?]", "measure[command_id]"
    end
  end
end
