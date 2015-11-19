class Admin < ActiveRecord::Base
  belongs_to :team
  has_many :permissions
end
