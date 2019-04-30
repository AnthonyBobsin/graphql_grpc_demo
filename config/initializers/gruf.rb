require 'gruf'

Gruf.configure do |c|
  c.default_client_host = '0.0.0.0:9003'
  c.server_binding_url = '0.0.0.0:9003'
end