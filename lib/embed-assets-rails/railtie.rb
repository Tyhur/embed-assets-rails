module Saulabs::EmbedAssets
  class Railtie < ::Rails::Railtie

    initializer "saulabs.sprockets.embed_assets", :after => 'sprockets.environment' do |app|
      Rails.application.config.assets.embed_assets = false if app.config.assets.embed_assets.nil?
      Rails.application.config.assets.register_bundle_processor 'text/css', Saulabs::EmbedAssets::Processor
    end

  end
end
