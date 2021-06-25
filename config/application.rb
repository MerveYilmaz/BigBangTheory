require File.expand_path("../boot",__FILE__)
require 'action_mailer/railtie'
require 'action_controller/railtie'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
if defined?(Bundler)
Bundler.require(*Rails.groups)
end

module Bigbangtheory
  class Application < Rails::Application
    config.i18n.enforce_available_locales = true
    I18n.config.enforce_available_locales = true
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*/.{rb,yml}').to_s]
    config.i18n.default_locale = :de
    config.load_defaults '6.0'
    config.autoloader = :classic

    config.autoload_paths += Dir[Rails.root.join('app', 'models', '{**/}')]

    config.time_zone = 'Berlin'
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
      "<span class=\"field_with_errors\">#{html_tag}</span>".html_safe
    end

    # Enable the asset pipeline
    config.assets.enabled = true
    config.assets.paths << "#{Rails}/vendor/assets/bootstrap"
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.version = '1.0'

  end
end

