require 'rails_helper'

RSpec.describe "cores/new", type: :view do
  before(:each) do
    assign(:core, Core.new(
      :area => "MyString",
      :persona => "MyString",
      :name => "MyString",
      :short_description => "MyText",
      :details => "MyText"
    ))
  end

  it "renders new core form" do
    render

    assert_select "form[action=?][method=?]", cores_path, "post" do

      assert_select "input[name=?]", "core[area]"

      assert_select "input[name=?]", "core[persona]"

      assert_select "input[name=?]", "core[name]"

      assert_select "textarea[name=?]", "core[short_description]"

      assert_select "textarea[name=?]", "core[details]"
    end
  end
end
