class Article < ActiveRecord::Base
  belongs_to :timeline_event
  has_many :references, :dependent => :destroy
  attr_accessible :summary, :body, :timeline_event_id, :references_attributes
  validates_presence_of :body, :summary
  accepts_nested_attributes_for :references
end
