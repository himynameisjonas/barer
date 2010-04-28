class User < ActiveRecord::Base
  has_many :bar
  
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :lockable, :confirmable, :timeoutable and :activatable
  devise :registerable, :authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :display_name, :email, :password, :password_confirmation
  
  validates_presence_of :display_name
end
