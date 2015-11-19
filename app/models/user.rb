class User < ActiveRecord::Base
  belongs_to :team
  has_many :scrum_updates
  has_many :permissions
end
