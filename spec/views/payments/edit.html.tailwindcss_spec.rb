require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  let(:payment) {
    Payment.create!(
      command: nil,
      amount: 1.5,
      status: 1
    )
  }

  before(:each) do
    assign(:payment, payment)
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(payment), "post" do

      assert_select "input[name=?]", "payment[command_id]"

      assert_select "input[name=?]", "payment[amount]"

      assert_select "input[name=?]", "payment[status]"
    end
  end
end
