require_relative "boot"

require "rails/all"

# To resolve -- Don't know how to build task 'precompile:assets' (See the list of available tasks with `rails --tasks`)
# require 'sprockets/railtile'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AlphaBlog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.

    #config/application.rb
    config.assets.Initialize_on_precompile = false

    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
