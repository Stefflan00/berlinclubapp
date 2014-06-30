set :application, 'BerlinClubApp'
set :repo_url, 'git@github.com:Stefflan00/berlinclubapp.git'
set :scm, :git
set :deploy_to, '/home/ubuntu/bitterblueberry'
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
ssh_options[:auth_methods] = ["publickey"]
ssh_options[:keys] = ["/Users/stefanmaier/Documents/Programming/Hosting/Amazon/3rd_amazon_machine.pem"]
#set :linked_files, %w{config/database.yml}
#set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :finishing, 'deploy:cleanup'
end
