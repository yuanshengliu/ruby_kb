require 'spec_helper'

describe "feedbacks/new" do
  before(:each) do
    assign(:feedback, stub_model(Feedback,
      :notes => "MyText",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new feedback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feedbacks_path, "post" do
      assert_select "textarea#feedback_notes[name=?]", "feedback[notes]"
      assert_select "input#feedback_author[name=?]", "feedback[author]"
    end
  end
end
