# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController


   
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

   # GET /resource/sign_up

  

   def new
     @user = User.new
   end

   def show
    @user = User.find(params[:first_name])
   end



  # POST /resource
  def create
    @user = User.new(user_params)
      
     
     # binding pry
      if @user.save

         UserMailer.with(user: @user).welcome_email.deliver_later
        redirect_to new_user_session_path
      else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /resource/edit
   def edit
     super
   end

  # PUT /resource
   def update
     super
   end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

    private
    def user_params
      params.require(:user).permit(:email,:password,:encrypted_password, :first_name,:last_name,:date_of_birth,:city,:gender)
    end
   end
