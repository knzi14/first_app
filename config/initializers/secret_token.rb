# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#FirstApp::Application.config.secret_key_base = #'ed6d4e85da56f3f0af18a8be27c002c0fed923cc2b0625f845d14bcd9585c5f33800eb5cda600b7373534a0d3f6c00d791637e146aaa5d228#1164e45df0d99d7'

require 'securerandom'
def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_fike)
    #Use the existing token.
    File.read(token_file).chomp
  else
    #Genereate new token and store it in token_file
    token = SecureRandom.hex(64)
    File.write(token_file,token)
    token
  end
end


