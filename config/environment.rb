# Load the rails application
require File.expand_path('../application', __FILE__)

Sass::Plugin.options[:never_update] = true
# Initialize the rails application
Kangaroost::Application.initialize!
