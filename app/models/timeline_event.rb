class TimelineEvent < ActiveRecord::Base
  has_many :videos, :dependent => :destroy
  has_many :articles, :dependent => :destroy
  attr_accessible :event_date, :title, :articles_attributes, :videos_attributes
  validates_presence_of :event_date, :title
  accepts_nested_attributes_for :videos, :articles
end
