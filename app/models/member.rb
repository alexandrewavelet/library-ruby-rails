class Member < ActiveRecord::Base
  attr_accessible :adress, :birth_date, :city, :firstname, :name, :phone, :zip_code

  validates :adress, :birth_date, :city, :firstname, :name, :phone, :zip_code, :presence => true

  validates_length_of :phone,    :is => 10
  validates_length_of :zip_code, :is => 5

  has_one :history

  def subscribe_date
  	self.created_at.strftime("%d-%m-%Y")
  end

  def isAdult?
  	self.birth_date.to_time < Time.now - 18.years
  end
end