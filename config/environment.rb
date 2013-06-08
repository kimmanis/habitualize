# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Habitualize::Application.initialize!

Time::DATE_FORMATS[:reminder_time] = "%I:%M"