class Paymentterm < ActiveRecord::Base
  attr_accessible :company_id, :day1, :day2, :day3, :percent1, :percent2, :shorttext, :term
end