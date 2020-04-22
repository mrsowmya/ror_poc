require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RorPoc
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    if Rails.env.development? || Rails.env.test?
      config.autoload_paths += %W(#{config.root}/lib/ror_poc)
    end

    if Rails.env.staging? || Rails.env.production?
      config.eager_load_paths += %W(#{config.root}/lib/ror_poc)
    end
  end
end
