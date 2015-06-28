module Omniauth

  module Mock
    def auth_mock
      OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
        'provider': 'github',
        'uid': '123545',
        'user_info': {
            'name': 'mockuser'
        },
        'credentials': {
            'token': 'mock_token',
            'secret': 'mock_secret'
        },
        'extra': {
            'raw_info': {
                'gravatar_url': 'mock_url'
            }
        }})
    end
  end

  module SessionHelpers
    def signin
      visit root_path
      expect(page).to have_content("Sign in")
      auth_mock
      click_link "Sign in"
    end
  end

end
