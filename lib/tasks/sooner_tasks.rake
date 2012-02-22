# desc "Explaining what the task does"
namespace :sooner do
  desc 'Sooner Bootstrap Assets Update'
  task :bootstrap_update do
    run "wget https://raw.github.com/twitter/bootstrap/master/bootstrap.min.css -O app/assets/stylesheets/bootstrap.css"
  end
end
