require 'spec_helper'

describe "action_tasks/show" do
  before(:each) do
    @action_task = assign(:action_task, stub_model(ActionTask,
      :name => "Name",
      :description => "MyText",
      :url => "Url",
      :state => "State",
      :type => "Type",
      :category => "Category",
      :action_program => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Url/)
    rendered.should match(/State/)
    rendered.should match(/Type/)
    rendered.should match(/Category/)
    rendered.should match(//)
  end
end
