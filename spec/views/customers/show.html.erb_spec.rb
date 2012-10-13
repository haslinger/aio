require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Academictitle/)
    rendered.should match(/Lastname/)
    rendered.should match(/Firstname/)
    rendered.should match(/Street/)
    rendered.should match(/Zipcode/)
    rendered.should match(/City/)
    rendered.should match(/Country/)
    rendered.should match(/Phone/)
    rendered.should match(/Fax/)
    rendered.should match(/Mobil/)
    rendered.should match(/Email/)
    rendered.should match(/Taxnumber/)
    rendered.should match(/Paymentterms/)
    rendered.should match(/Customergroup/)
    rendered.should match(/Taxcode/)
    rendered.should match(/Salesman/)
    rendered.should match(/MyText/)
    rendered.should match(/Deletionflag/)
    rendered.should match(/Contactperson/)
    rendered.should match(/Discount/)
    rendered.should match(/MyText/)
    rendered.should match(/Currency/)
    rendered.should match(/1/)
  end
end
