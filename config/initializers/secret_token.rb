# Be sure to restart your server when you modify this file.

<<<<<<< HEAD
# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp40::Application.config.secret_key_base = secure_token
=======
# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
SampleApp::Application.config.secret_token = 'd5af2e36dca45de3ccf14c8d65f49778c280bf10d3f3b4a527f1918aebba2b07259a3722c194117c7d71dfdccfcfd51775035b0cb4d0543b9f3fdf3089f6ffcb'
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
