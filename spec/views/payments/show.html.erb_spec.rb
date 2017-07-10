require 'rails_helper'

RSpec.describe "payments/show", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :vehicle => "Vehicle"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Vehicle/)
  end
end
