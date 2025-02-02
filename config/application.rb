require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CrypoWallet
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Configure default locale and available locales
    config.i18n.default_locale = :en
    config.i18n.available_locales = [:en, 'pt-BR']
  end
end

