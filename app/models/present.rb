class Present < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipient
  attr_accessible :cost, :delivered, :given, :product, :purchased, :store, :split
end
