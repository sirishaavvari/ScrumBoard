class Team < ActiveRecord::Base
  has_many :users
  has_many :admins
  has_many :sprints
end
