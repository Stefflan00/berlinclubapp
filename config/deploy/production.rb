set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '54.76.205.157', user: 'ubuntu', roles: %w{web app}
