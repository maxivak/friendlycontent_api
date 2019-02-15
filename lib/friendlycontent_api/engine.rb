module FriendlycontentApi
  class Engine < ::Rails::Engine
    isolate_namespace FriendlycontentApi

    config.watchable_dirs['lib'] = [:rb] if Rails.env.development?
    #config.watchable_dirs['app/helpers'] = [:rb] if Rails.env.development?

    config.autoload_paths += Dir["#{FriendlycontentApi::Engine.root}/lib/"]
    config.autoload_paths += Dir["#{FriendlycontentApi::Engine.root}/lib/**/"]


    config.autoload_paths += Dir["#{FriendlycontentApi::Engine.root}/lib/friendlycontent_api/"]
    config.autoload_paths += Dir["#{FriendlycontentApi::Engine.root}/lib/friendlycontent_api/**/"]

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end


  end
end
