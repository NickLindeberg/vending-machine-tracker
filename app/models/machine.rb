class Machine < ApplicationRecord
  validates_presence_of :location

  belongs_to :owner
  has_many :snacks

  def self.avg_price
    require "pry"; binding.pry
    avg(snacks.price)
  end
end
