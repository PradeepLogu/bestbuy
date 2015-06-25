class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable


    has_many :social_providers, dependent: :destroy

  # update from OAuth
  def update_from_oauth(auth, provider_type)
    self.email = auth[:info][:email] if self.email.blank?
    case provider_type
    when :twitter
      name = auth[:info][:name].split(' ')
      self.first_name ||= name[0]
      self.last_name ||= name[1]
      
    when :facebook
       name = auth[:info][:name].split(' ')
      self.first_name ||= name[0]
      self.last_name ||= name[1]
      
    when :google
       name = auth[:info][:name].split(' ')
      self.first_name ||= name[0]
      self.last_name ||= name[1]
      
    end
  end
end
