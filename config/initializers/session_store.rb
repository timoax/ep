# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ep_session',
  :secret      => '64148d549f6af106debd6258f02b9d6acad4e4547c58cc42140894e260b141a947477212e8d079f9bef665ea2cd86af1eddd25e97ce1473dd1ef76a4b9ca50bd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
