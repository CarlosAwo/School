require 'rails_helper'

RSpec.describe "measures/show", type: :view do
  before(:each) do
    assign(:measure, Measure.create!(
      name: "Name",
      value: 2.5,
      command: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
