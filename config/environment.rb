# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

Depot::Application.configure do
	config.action_mailer.deliver_method = :smtp

	config.action_mailer.smtp_settings = {
		:address => "smtp.gmail.com",
		:port => 587,
		:domain => "brayden@example.com",
		:authenticaiton => "plain",
		:user_name => "brayden",
		:password => "secret",
		:enable_starttls_auto => true
	}
end

