class Video < ActiveRecord::Base
  require 'youtube_it'
  
  belongs_to :timeline_event
  attr_accessible :alt_title, :timeline_event_id, :video_url
  before_validation :lookup_youtube_video
  validates_presence_of :video_url, :image_url  
  
  private
    def lookup_youtube_video
      client = YouTubeIt::Client.new
      begin
        video = client.video_by(self.video_url)
        thumbnails = video.thumbnails
        thumbnails.empty? ? (self.image_url = "generic image") : (self.image_url = thumbnails[1].url)
      rescue Exception => e
        e.message
      end
  end
end
