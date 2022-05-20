class Friend < ApplicationRecord


 # skip_before_action :verify_authenticity_token
 #skip_before_filter :verify_authenticity_token, :only => [:index, :show]

    validates :friend_id, uniqueness: true
	 belongs_to :user

end
