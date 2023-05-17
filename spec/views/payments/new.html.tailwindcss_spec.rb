require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      command: nil,
      amount: 1.5,
      status: 1
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input[name=?]", "payment[command_id]"

      assert_select "input[name=?]", "payment[amount]"

      assert_select "input[name=?]", "payment[status]"
    end
  end
end
