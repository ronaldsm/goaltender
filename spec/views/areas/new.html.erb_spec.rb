require 'rails_helper'

RSpec.describe "areas/new", type: :view do
  before(:each) do
    assign(:area, Area.new(
      :name => "MyString",
      :name => "MyString",
      :details => "MyText"
    ))
  end

  it "renders new area form" do
    render

    assert_select "form[action=?][method=?]", areas_path, "post" do

      assert_select "input[name=?]", "area[name]"

      assert_select "input[name=?]", "area[name]"

      assert_select "textarea[name=?]", "area[details]"
    end
  end
end
