class User < ActiveRecord::Base
  attr_accessible :provider, :uid, :name, :email, :first_name, :last_name, :image, :reminder, :next_reminder, :reminder_time, :next_session
  validates_presence_of :name

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
         user.first_name = auth['info']['first_name'] || ""
         user.last_name = auth['info']['last_name'] || ""
         user.image = auth['info']['image'] || ""
      end
    end
  end

end
