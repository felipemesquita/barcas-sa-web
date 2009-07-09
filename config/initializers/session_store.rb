# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_barcas-sa-web_session',
  :secret      => '125aadd01148bde1a405f3bc752a998b342bc5415c15beb3a316329a6a55731fad45709bbc18295f0ab542fa8429fd71256e873d26e2153bcf51ed7a3b5e456f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
