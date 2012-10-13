require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :productkey => "Productkey",
        :shorttext => "Shorttext",
        :description => "MyText",
        :productgroup => "Productgroup",
        :eannumber => "Eannumber",
        :taxcode => "Taxcode",
        :deletionflag => "Deletionflag",
        :baseunit => "Baseunit",
        :salesprice => "9.99",
        :purchaseprice => "9.99",
        :user_id => 1
      ),
      stub_model(Product,
        :productkey => "Productkey",
        :shorttext => "Shorttext",
        :description => "MyText",
        :productgroup => "Productgroup",
        :eannumber => "Eannumber",
        :taxcode => "Taxcode",
        :deletionflag => "Deletionflag",
        :baseunit => "Baseunit",
        :salesprice => "9.99",
        :purchaseprice => "9.99",
        :user_id => 1
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Productkey".to_s, :count => 2
    assert_select "tr>td", :text => "Shorttext".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Productgroup".to_s, :count => 2
    assert_select "tr>td", :text => "Eannumber".to_s, :count => 2
    assert_select "tr>td", :text => "Taxcode".to_s, :count => 2
    assert_select "tr>td", :text => "Deletionflag".to_s, :count => 2
    assert_select "tr>td", :text => "Baseunit".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
