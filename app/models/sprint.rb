class Sprint < ActiveRecord::Base
  belongs_to :team
  has_many :scrum_updates
end
