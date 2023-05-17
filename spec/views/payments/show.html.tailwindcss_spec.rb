require 'rails_helper'

RSpec.describe "payments/show", type: :view do
  before(:each) do
    assign(:payment, Payment.create!(
      command: nil,
      amount: 2.5,
      status: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
  end
end
