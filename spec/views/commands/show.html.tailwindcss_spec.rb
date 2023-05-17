require 'rails_helper'

RSpec.describe "commands/show", type: :view do
  before(:each) do
    assign(:command, Command.create!(
      customer: nil,
      product: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
