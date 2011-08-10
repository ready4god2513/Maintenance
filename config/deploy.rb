namespace :deploy do
  
  desc "enable the web app (take out of maintenance)"
  task :enable, :roles => :web do
    run "rm #{shared_path}/current/public/maintenance.html"
  end
  
  
  desc "disable the web app (put in maintenance)"
  task :disable, :roles => :web do
    run "cp #{deploy_to}/current/public/maintenance.html #{shared_path}/maintenance.html"
  end
  
end