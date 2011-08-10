namespace :deploy do
  
  desc "enable the web app (take out of maintenance)"
  task :enable, :roles => :web do
    run "rm -rf #{deploy_to}/currrent/public/maintenance.html"
  end
  
  
  desc "disable the web app (put in maintenance)"
  task :disable, :roles => :web do
    run "echo '' > #{deploy_to}/current/public/maintenance.html"
  end
  
end