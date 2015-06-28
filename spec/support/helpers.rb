Dir[Rails.root.join('spec/support/helpers/*.rb')].each { |f| require f }
RSpec.configure do |config|
  config.include Omniauth::Mock
  config.include Omniauth::SessionHelpers, type: :feature
end
OmniAuth.config.test_mode = true
