class Feedback < ActiveRecord::Base
  attr_accessible :author, :notes, :article_id

  belongs_to :article
end
