class ApplicationController < ActionController::Base


     before_action :authenticate_user!    

      def after_sign_in_path_for(resource)
   	    profiles_path
      end


     def after_sign_out_path_for(scope)
     	'/users/sign_in'
     end	

end
