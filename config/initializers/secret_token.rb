# Be sure to restart your server when you modify this file.

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
		File.read(token_file).chomp		
	else
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
	
end

SampleApp::Application.config.secret_key_base = secure_token


SampleApp::Application.config.secret_key_base = '121bba6fa7061d67306fd38bcdf4e868a1f719f8c8f1c159a8561daf1dddec5faaf9f497bb3f25fee1759377765dcb5d86c8d8fb796630b6f865bb9970bc7c05'
