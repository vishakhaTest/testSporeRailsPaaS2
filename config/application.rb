require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require 'app-version'
require 'app-logging'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

if [:development, :test].include? Rails.env
  require 'dotenv'
  Dotenv.load(".env.#{ENV['RAILS_ENV']}", '.env')
end

module TestSporeRailsPaaS2
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.assets.precompile += %w(
        ie_8.css
        ie_8.js
        ie_9.js
        mobile_menu_customisation.js
    )

    # Add fonts to assets pipeline
    config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    # Precompile fonts
    config.assets.precompile += %w( *.svg *.eot *.woff *.ttf )

    config.eager_load_paths += Dir[Rails.root.join('lib/', '**/')]

    config.logger = AppLogging.logger
    config.log_level = :info
    
    config.lograge.enabled = true

    # Route exceptions to dynamic error pages
    config.exceptions_app = self.routes

  end
end
