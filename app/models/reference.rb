class Reference < ActiveRecord::Base
  belongs_to :article, :dependent => :destroy
  attr_accessible :article_id, :url
end
