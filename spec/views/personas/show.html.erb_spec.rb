require 'rails_helper'

RSpec.describe "personas/show", type: :view do
  before(:each) do
    @persona = assign(:persona, Persona.create!(
      :name => "Name",
      :details => "MyText",
      :url => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
