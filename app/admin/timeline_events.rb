ActiveAdmin.register TimelineEvent do
    require 'youtube_it'
  form do |f|
    f.inputs "Timeline Details" do
      f.input :title
      f.input :event_date
      
      f.inputs "Articles" do
        f.has_many :articles do |a|
          a.input :summary
          a.input :body
          
          a.inputs "References" do
            a.has_many :references do |r|
              r.input :url
            end
          end
        end
      end
        
        f.inputs "Videos" do
          f.has_many :videos do |m|
            m.input :video_url
            m.input :alt_title
          end
        end
      
    end
    f.buttons
  end
end
