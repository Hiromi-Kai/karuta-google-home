source "https://rubygems.org"

ruby "2.4.2"
# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 5.1.0"
# Use Puma as the app server
gem "puma", "~> 3.0"
#Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
gem "bcrypt", "~> 3.1.7"

gem "pg"

gem "redis-rails"

group :development, :test do
  gem "byebug", platform: :mri
  gem "timecop"
  gem "pry"
end

group :development do
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :development, :staging do
  gem "bullet"
end

group :test do
  gem "rspec-rails" , "~> 3.2"
  gem "rspec"
  gem "shoulda-matchers"
end

group :staging, :production do
  gem "rails_12factor"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "rubocop"

gem "config"

gem "seed-fu"

gem "baby_squeel"

gem "pragmatic_segmenter"

gem "activerecord-import"
