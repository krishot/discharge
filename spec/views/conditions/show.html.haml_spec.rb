require 'spec_helper'

describe "conditions/show" do
  before(:each) do
    @condition = assign(:condition, stub_model(Condition,
      :name => "Name",
      :description => "MyText",
      :url => "MyText",
      :state => "State",
      :type => "Type",
      :category => "Category",
      :icd9 => "Icd9",
      :action_program => nil,
      :offers => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/State/)
    rendered.should match(/Type/)
    rendered.should match(/Category/)
    rendered.should match(/Icd9/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
