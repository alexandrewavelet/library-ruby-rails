class History < ActiveRecord::Base
  attr_accessible :date, :planned_date

  belongs_to :member
end
