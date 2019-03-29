require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChuYouxue
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # 引入第三方静态文件
    config.assets.paths << Rails.root.join('vendor', 'assets', 'vendor')
    config.assets.precompile << Proc.new { |path, fn| fn =~ /vendor\/assets\/images/ }
  end
end
