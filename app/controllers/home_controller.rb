class HomeController < ApplicationController
  
  def index
    @years_events = TimelineEvent.all.group_by{|event| event.event_date.year}
    
  end
  
end
