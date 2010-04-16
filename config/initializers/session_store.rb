# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sunkhak_session',
  :secret      => 'c611e74ab29c802db1c297942a22c3be284c7f9c50b548299c13c4eb3b0632ce1bb7522ba0f11a44aa61b801a4db82189358c44f2030cad6260dffa8fa132822'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
