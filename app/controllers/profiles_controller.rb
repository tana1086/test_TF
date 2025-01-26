class ProfilesController < ApplicationController
    def index
        @profile = current_user.profile
    end

    def new
        @profile = current_user.build_profile
    end

    def create
        @profile = current_user.build_profile(profile_params)

        if @profile.save
          redirect_to profiles_path
        else
            redirect_to new_profile_path
        end
    end

    def edit
        @profile = current_user.profile
    end

    def update
        @profile = current_user.profile

        if @profile.update(profile_params)
            redirect_to profiles_path
        else
            render edit_profile_path
        end
    end

    private

    def profile_params
        params.require(:profile).permit(:name, :target)
    end
end