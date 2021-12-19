set :application, "test_capistrano"
set :repo_url, "git@github.com:Hunter2065/test_capistrano.git"

# Deploy to the user's home directory
set :deploy_to, "/home/xi-master/#{fetch :application}"
set :default_env, { 'PASSENGER_INSTANCE_REGISTRY_DIR' => '/home/xi-master/.rvm/gems/ruby-3.0.0/bin/passenger' }

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5

set :linked_files, %w(config/master.key config/credentials.yml.enc config/database.yml)
