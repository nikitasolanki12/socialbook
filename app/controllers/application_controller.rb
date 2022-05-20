class ApplicationController < ActionController::Base


     before_action :authenticate_user!    

      def after_sign_in_path_for(resource)
   	    profiles_path
      end


     def after_sign_out_path_for(scope)
     	'/users/sign_in'
  
     end	

 #     before_action :cor
 #  rescue_from ActionController::InvalidAuthenticityToken, :with => :bad_token

 # def bad_token
 #    Rails.logger.debug("session expired!")
 #  end


 #  private
 #  def cor
 #    headers["Access-Control-Allow-Origin"]  = "*"
 #    headers["Access-Control-Allow-Methods"] = %w{GET POST PUT DELETE}.join(",")
 #    headers["Access-Control-Allow-Headers"] = %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(",")
 #    head(:ok) if request.request_method == "OPTIONS"
 #  end
end
