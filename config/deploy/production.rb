set :stage, :production
set :user, "ubuntu"
server "54.76.205.157", :app, :web, :db, :primary => true
ssh_options[:keys] = ["#{ENV['HOME']}/Users/stefanmaier/Documents/Programming/Hosting/Amazon/3rd_amazon_machine.pem"]
