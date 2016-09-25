module UsersHelper

    def checked(area)
    @user.skills.nil? ? false : @user.skills.match(area)
  end
end
