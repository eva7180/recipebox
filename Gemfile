source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.1'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'coffee-rails', '~> 4.2'
gem 'cocoon', '~> 1.2.0'
gem 'devise', '~> 4.4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sprockets-rails', :require => 'sprockets/railtie'
#gem 'simple_form', '~> 3.5'
gem 'jquery-rails'
#gem 'paperclip', '~> 6.0.0'
gem 'pg', '~> 0.18.4'
gem 'mini_magick'
gem 'aws-sdk-s3', require: false

group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'better_errors'
  gem 'binding_of_caller'
end