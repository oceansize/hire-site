class Recruiters::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def linkedin
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @recruiter = Recruiter.from_omniauth(request.env["omniauth.auth"])
    if @recruiter.persisted?
      sign_in_and_redirect @recruiter, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Linked in") if is_navigational_format?
    else
      session["devise.linked_in_data"] = request.env["omniauth.auth"]
      redirect_to new_recruiter_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
