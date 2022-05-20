class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable,:trackable, :omniauthable,
         :omniauth_providers => [:facebook,:linkedin]#:google_oauth2]


    # def self.from_omniauth(auth)
    #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    #   user.email = auth.info.email
    # end


   has_many :posts
   has_many :friends    
   

  
   has_many :posts, dependent: :destroy
   has_many :comments, dependent: :destroy


    # after_create :send_welcome_mail
    #  def send_welcome_mail
    #   Contact.welcome_email(self.email).deliver
    #  end

  # def friends_list
  #   friends_array = friendships.map{|friendship| friendship.friend if friendship.confirmed}
  #   friends_array + inverse_friendships.map{|friendship| friendship.user if friendship.confirmed}
  #   friends_array.compact
  # end

  # #users who haven't accepted friend request
  # def pending_friends
  #   friendships.map{|friendship| friendship.friend if !friendship.confirmed}.compact
  # end

  # #users who have requested to be friends
  # def friend_requests
  #   inverse_friendships.map{|friendship| friendship.user if !friendship.confirmed}.compact
  # end

  # def confirm_friend(user)
  #   friendship = inverse_friendships.find{|friendship| friendship.user == user}
  #   friendship.confirmed = true
  #   friendship.save
  # end

  # def friend?(user)
  #   friends_list.include?(user)
  # end
end



