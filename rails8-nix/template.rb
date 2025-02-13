### README FIRST
# RuboCop:
# This template replaces rails rubocop omakase with it's own rubocop config
# Please use "--skip-rubocop" flag

gem_group :development, :test do
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"
  gem "rubocop"
  gem "rubocop-factory_bot", require: false
  gem "rubocop-faker", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rspec_rails", require: false
end

file ".rubocop.yml", <<-CODE
require:
  - rubocop-factory_bot
  - rubocop-faker
  - rubocop-performance
  - rubocop-rails
  - rubocop-rspec
  - rubocop-rspec_rails

AllCops:
  NewCops: enable
  SuggestExtensions: true

Style/StringLiterals:
  Enabled: true
  EnforcedStyle: double_quotes

Style/Documentation:
  Enabled: false

Style/TrailingCommaInArguments:
  Enabled: true
  EnforcedStyleForMultiline: consistent_comma

Style/TrailingCommaInArrayLiteral:
  Enabled: true

Style/TrailingCommaInHashLiteral:
  Enabled: true

Style/ClassAndModuleChildren:
  Enabled: true
  EnforcedStyle: compact
CODE

after_bundle do
  generate "rspec:install"
end
