require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :title => "Title",
        :academictitle => "Academictitle",
        :lastname => "Lastname",
        :firstname => "Firstname",
        :street => "Street",
        :zipcode => "Zipcode",
        :city => "City",
        :country => "Country",
        :phone => "Phone",
        :fax => "Fax",
        :mobil => "Mobil",
        :email => "Email",
        :taxnumber => "Taxnumber",
        :paymentterms => "Paymentterms",
        :customergroup => "Customergroup",
        :taxcode => "Taxcode",
        :salesman => "Salesman",
        :comment => "MyText",
        :deletionflag => "Deletionflag",
        :contactperson => "Contactperson",
        :discount => "Discount",
        :consignee => "MyText",
        :currency => "Currency",
        :user => 1
      ),
      stub_model(Customer,
        :title => "Title",
        :academictitle => "Academictitle",
        :lastname => "Lastname",
        :firstname => "Firstname",
        :street => "Street",
        :zipcode => "Zipcode",
        :city => "City",
        :country => "Country",
        :phone => "Phone",
        :fax => "Fax",
        :mobil => "Mobil",
        :email => "Email",
        :taxnumber => "Taxnumber",
        :paymentterms => "Paymentterms",
        :customergroup => "Customergroup",
        :taxcode => "Taxcode",
        :salesman => "Salesman",
        :comment => "MyText",
        :deletionflag => "Deletionflag",
        :contactperson => "Contactperson",
        :discount => "Discount",
        :consignee => "MyText",
        :currency => "Currency",
        :user => 1
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Academictitle".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Mobil".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Taxnumber".to_s, :count => 2
    assert_select "tr>td", :text => "Paymentterms".to_s, :count => 2
    assert_select "tr>td", :text => "Customergroup".to_s, :count => 2
    assert_select "tr>td", :text => "Taxcode".to_s, :count => 2
    assert_select "tr>td", :text => "Salesman".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Deletionflag".to_s, :count => 2
    assert_select "tr>td", :text => "Contactperson".to_s, :count => 2
    assert_select "tr>td", :text => "Discount".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
