require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :title => "MyString",
      :academictitle => "MyString",
      :lastname => "MyString",
      :firstname => "MyString",
      :street => "MyString",
      :zipcode => "MyString",
      :city => "MyString",
      :country => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :mobil => "MyString",
      :email => "MyString",
      :taxnumber => "MyString",
      :paymentterms => "MyString",
      :customergroup => "MyString",
      :taxcode => "MyString",
      :salesman => "MyString",
      :comment => "MyText",
      :deletionflag => "MyString",
      :contactperson => "MyString",
      :discount => "MyString",
      :consignee => "MyText",
      :currency => "MyString",
      :user => 1
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path(@customer), :method => "post" do
      assert_select "input#customer_title", :name => "customer[title]"
      assert_select "input#customer_academictitle", :name => "customer[academictitle]"
      assert_select "input#customer_lastname", :name => "customer[lastname]"
      assert_select "input#customer_firstname", :name => "customer[firstname]"
      assert_select "input#customer_street", :name => "customer[street]"
      assert_select "input#customer_zipcode", :name => "customer[zipcode]"
      assert_select "input#customer_city", :name => "customer[city]"
      assert_select "input#customer_country", :name => "customer[country]"
      assert_select "input#customer_phone", :name => "customer[phone]"
      assert_select "input#customer_fax", :name => "customer[fax]"
      assert_select "input#customer_mobil", :name => "customer[mobil]"
      assert_select "input#customer_email", :name => "customer[email]"
      assert_select "input#customer_taxnumber", :name => "customer[taxnumber]"
      assert_select "input#customer_paymentterms", :name => "customer[paymentterms]"
      assert_select "input#customer_customergroup", :name => "customer[customergroup]"
      assert_select "input#customer_taxcode", :name => "customer[taxcode]"
      assert_select "input#customer_salesman", :name => "customer[salesman]"
      assert_select "textarea#customer_comment", :name => "customer[comment]"
      assert_select "input#customer_deletionflag", :name => "customer[deletionflag]"
      assert_select "input#customer_contactperson", :name => "customer[contactperson]"
      assert_select "input#customer_discount", :name => "customer[discount]"
      assert_select "textarea#customer_consignee", :name => "customer[consignee]"
      assert_select "input#customer_currency", :name => "customer[currency]"
      assert_select "input#customer_user", :name => "customer[user]"
    end
  end
end
