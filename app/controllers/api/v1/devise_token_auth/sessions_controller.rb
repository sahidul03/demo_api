module Api
  module V1
    module DeviseTokenAuth
      class SessionsController < ::DeviseTokenAuth::SessionsController
        # note :: for loading root constants(::DeviseTokenAuth::SessionsController)
        # otherwise you'll get circular dependency error

        # def create
        #   super
        # end

        protected
        # custom rendering
      end
    end
  end
end