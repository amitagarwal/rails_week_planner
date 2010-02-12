# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_week-planer_session',
  :secret      => '372cbba0f019588961621791ec36c9f0f1c5acb65b510f8edb617e51904006c2e99b9b6eed1a1b59e7b73a5c3f36f10b87ffd9fcd08563c3442ed972f977b3b0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
