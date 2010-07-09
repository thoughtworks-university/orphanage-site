# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_orphanage_session',
  :secret      => 'ec91f68ab243bc7df0630260103595853404cfe262e400b57f5e0611e218a146b5cc5c5ee4604d5c20bbff5fac4f5a5d5559fb01ba21053837c1b4e6f7b1cb6d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
