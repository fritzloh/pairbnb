class User < ActiveRecord::Base
  include Clearance::User
  

  has_many :listings

  def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth['provider']
    user.uid = auth['uid']
    if auth['info']
      user.name = auth['info']['name'] || ""
      user.email = auth['info']['email'] || ""
      user.password = "facebookpassword"
    end
  end
end

end
