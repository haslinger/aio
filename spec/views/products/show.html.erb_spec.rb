require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Productkey/)
    rendered.should match(/Shorttext/)
    rendered.should match(/MyText/)
    rendered.should match(/Productgroup/)
    rendered.should match(/Eannumber/)
    rendered.should match(/Taxcode/)
    rendered.should match(/Deletionflag/)
    rendered.should match(/Baseunit/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
  end
end
