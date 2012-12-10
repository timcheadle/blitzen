class Recipient < ActiveRecord::Base
  has_many :presents

  attr_accessible :name
end
