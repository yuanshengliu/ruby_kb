class User < ActiveRecord::Base
  attr_accessible :email, :name, :user_type
end
