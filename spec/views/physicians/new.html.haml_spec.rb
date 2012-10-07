require 'spec_helper'

describe "physicians/new" do
  before(:each) do
    assign(:physician, stub_model(Physician,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :specialty => "MyText",
      :state => "MyString",
      :patients => nil
    ).as_new_record)
  end

  it "renders new physician form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => physicians_path, :method => "post" do
      assert_select "input#physician_first_name", :name => "physician[first_name]"
      assert_select "input#physician_last_name", :name => "physician[last_name]"
      assert_select "input#physician_email", :name => "physician[email]"
      assert_select "input#physician_phone", :name => "physician[phone]"
      assert_select "textarea#physician_specialty", :name => "physician[specialty]"
      assert_select "input#physician_state", :name => "physician[state]"
      assert_select "input#physician_patients", :name => "physician[patients]"
    end
  end
end
