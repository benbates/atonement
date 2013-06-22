  HealthGraph.configure do |config|
    config.client_id                  = ENV["CLIENT_ID"]
    config.client_secret              = ENV["CLIENT_SECRET"]
#    config.authorization_redirect_url = 'http://atonement-app.herokuapp.com/auth/runkeeper/callback'
    config.authorization_redirect_url = 'http://localhost:3000/auth/runkeeper/callback'
    config.authorization_url          = 'https://runkeeper.com/apps/authorize'
    config.access_token_url           = 'https://runkeeper.com/apps/token'
#    config.endpoint                   = 'http://localhost.com:3000/devapi/'
  end