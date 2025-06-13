module Admin
  extend ActiveSupport::Concern
  
  included do
    before_action :authorize
  end
  
  private
    def authorize
      unless session[:admin_id]
        redirect_to login_url, alert: 'Please log in'
      end
    end
end
