require 'rails_helper'

RSpec.describe "commands/edit", type: :view do
  let(:command) {
    Command.create!(
      customer: nil,
      product: nil,
      user: nil
    )
  }

  before(:each) do
    assign(:command, command)
  end

  it "renders the edit command form" do
    render

    assert_select "form[action=?][method=?]", command_path(command), "post" do

      assert_select "input[name=?]", "command[customer_id]"

      assert_select "input[name=?]", "command[product_id]"

      assert_select "input[name=?]", "command[user_id]"
    end
  end
end
