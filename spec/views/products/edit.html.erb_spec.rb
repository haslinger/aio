require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :productkey => "MyString",
      :shorttext => "MyString",
      :description => "MyText",
      :productgroup => "MyString",
      :eannumber => "MyString",
      :taxcode => "MyString",
      :deletionflag => "MyString",
      :baseunit => "MyString",
      :salesprice => "9.99",
      :purchaseprice => "9.99",
      :user_id => 1
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_productkey", :name => "product[productkey]"
      assert_select "input#product_shorttext", :name => "product[shorttext]"
      assert_select "textarea#product_description", :name => "product[description]"
      assert_select "input#product_productgroup", :name => "product[productgroup]"
      assert_select "input#product_eannumber", :name => "product[eannumber]"
      assert_select "input#product_taxcode", :name => "product[taxcode]"
      assert_select "input#product_deletionflag", :name => "product[deletionflag]"
      assert_select "input#product_baseunit", :name => "product[baseunit]"
      assert_select "input#product_salesprice", :name => "product[salesprice]"
      assert_select "input#product_purchaseprice", :name => "product[purchaseprice]"
      assert_select "input#product_user_id", :name => "product[user_id]"
    end
  end
end
