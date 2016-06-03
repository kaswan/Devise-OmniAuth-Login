class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
         
  def self.find_for_oauth(auth_hash)
    user = find_or_create_by(email: auth_hash.info.email)
    user.email = auth_hash.info.email
    user.name = auth_hash.info.name ? auth_hash.info.name : auth_hash.info.email.split('@').first 
    user.gender = auth_hash.extra.raw_info.genr unless auth_hash.extra.raw_info.gender.blank?
    user.location = auth_hash.info.location if auth_hash.provider == 'facebook'
    user.image_url = auth_hash.info.image unless auth_hash.provider == 'yahoojp'
    user.url = auth_hash.info.urls[auth_hash.provider.capitalize] unless auth_hash.provider == 'yahoojp'          
    user.password = 'broz1101' if auth_hash.provider == 'yahoojp' || user.password.nil?  
    
    user.uid = auth_hash.uid
    user.provider = auth_hash.provider
    user.save!
    user
  end
       
end
