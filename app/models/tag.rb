class Tag < ActiveRecord::Base
  belong_to :type
  has_many :attributes
  has_many :properties
end
