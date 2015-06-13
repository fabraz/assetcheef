OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1396241344040046', 'fa1e31b054e4a12dc476df022e3f24b4', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end