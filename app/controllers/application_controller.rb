# class ApplicationController < ActionController::Base
#   before_action :set_locale

#   def set_locale
#     if params[:locale]
#       cookies[:locale] = params[:locale]
#   end

#   if cookies[:locale]
#     if I18n.locale != cookies[:locale]
#       I18n.locale = cookies[:locale]
#       end
#     end
#   end
# end

class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    if params[:locale] && I18n.available_locales.include?(params[:locale].to_sym)
      I18n.locale = params[:locale]
    else
      I18n.locale = I18n.default_locale
    end
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
