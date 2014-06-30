set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '54.76.205.157', user: 'ubuntu', roles: %w{web app}
ssh_options[:keys] = ["/Users/stefanmaier/Documents/Programming/Hosting/Amazon/3rd_amazon_machine.pem"]
