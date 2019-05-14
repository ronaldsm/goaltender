require 'rails_helper'

RSpec.describe "personas/index", type: :view do
  before(:each) do
    assign(:personas, [
      Persona.create!(
        :name => "Name",
        :details => "MyText",
        :url => "MyText"
      ),
      Persona.create!(
        :name => "Name",
        :details => "MyText",
        :url => "MyText"
      )
    ])
  end

  it "renders a list of personas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
