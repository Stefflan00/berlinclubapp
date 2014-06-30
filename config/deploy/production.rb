set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
set :password, ask('Password', nil)
server '54.76.205.157', port: 22, user: 'deploy', password: fetch(:password), roles: %w{web app}
