class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private

  def after_sign_in_path_for(resource_or_scope)
    if current_user.profile&.name.nil?
      new_profile_path
    else
      posts_path
    end
  end

end