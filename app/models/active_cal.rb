class ActiveCal < ActiveRecord::Base
  belongs_to :channel
  # attr_accessible :title, :body
end
