# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( smarty/extralayers.css )
Rails.application.config.assets.precompile += %w( smarty/layout.css )
Rails.application.config.assets.precompile += %w( smarty/header-1.css )
Rails.application.config.assets.precompile += %w( smarty/green.css )
Rails.application.config.assets.precompile += %w( jquery/jquery-2.2.3.min.js )
Rails.application.config.assets.precompile += %w( smarty/settings.css )
Rails.application.config.assets.precompile += %w( script.js )
Rails.application.config.assets.precompile += %w( smarty/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( smarty/essentials.css )
Rails.application.config.assets.precompile += %w( smarty/brands.css )
Rails.application.config.assets.precompile += %w( brands.js )
Rails.application.config.assets.precompile += %w( smarty/page.css )
Rails.application.config.assets.precompile += %w( custom.css )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
