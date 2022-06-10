source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'rails', '~> 7.0.3'

# Default gems
gem 'bootsnap', require: false
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'tzinfo-data', platforms: %i(mingw mswin x64_mingw jruby)

# Add gems
gem 'devise'
gem 'devise-jwt'
gem 'graphql'

group :development, :test do
  gem 'debug', platforms: %i(mri mingw x64_mingw)
  gem 'dotenv-rails'
end

group :development do
  gem 'graphiql-rails'
  gem 'retrieva-cop', require: false
  gem 'rubocop-graphql', require: false
  # graphiql動作に必要
  gem 'sass-rails'
end
