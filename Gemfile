source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'pg'
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'

group :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'rails_serve_static_assets'
end

group :assets do
  gem 'jquery-rails'
  gem 'jquery-ui-rails'
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'

end  

gem 'bootstrap-sass', '~> 2.3.2.2'

gem 'devise',              github: 'plataformatec/devise'
gem 'responders',          github: 'plataformatec/responders'
gem 'inherited_resources', github: 'josevalim/inherited_resources'
gem 'ransack',             github: 'ernie/ransack'
gem 'activeadmin',         github: 'gregbell/active_admin'

gem 'formtastic',          github: 'justinfrench/formtastic'
# gem 'protected_attributes'

# Use SCSS for stylesheets


# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views


# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server


# Use Capistrano for deployment
# gem 'capistrano', group: :development
  gem "better_errors"
group :development, :test do 
  gem 'letter_opener'
  gem 'debugger'
  # gem "better_errors"
  gem "binding_of_caller"
  gem "pry-rails"
  gem "rspec"
  gem "rspec-rails"
  gem "autotest"
  gem "autotest-standalone"
  gem 'debugger'
  gem 'factory_girl_rails'
  gem 'shoulda'
  gem 'faker'
end

ruby "2.0.0"
