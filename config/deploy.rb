set :application, "test_capistrano"
set :repo_url, "git@github.com:Hunter2065/test_capistrano.git"

# Deploy to the user's home directory
set :deploy_to, "/home/xi-master/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5
