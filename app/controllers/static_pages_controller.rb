class StaticPagesController < ApplicationController

    def home
       redirect_to '/users/sign_up'
  end
end
