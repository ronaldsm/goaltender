require 'rails_helper'

RSpec.describe "cores/index", type: :view do
  before(:each) do
    assign(:cores, [
      Core.create!(
        :area => "Area",
        :persona => "Persona",
        :name => "Name",
        :short_description => "MyText",
        :details => "MyText"
      ),
      Core.create!(
        :area => "Area",
        :persona => "Persona",
        :name => "Name",
        :short_description => "MyText",
        :details => "MyText"
      )
    ])
  end

  it "renders a list of cores" do
    render
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Persona".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
