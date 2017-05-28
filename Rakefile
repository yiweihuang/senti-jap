Dir.glob('./{config,controllers,services,views}/init.rb').each do |file|
  require file
end


namespace :deploy do
  require 'config_env/rake_tasks'
  ConfigEnv.path_to_config("#{__dir__}/config/config_env.rb")

  task :config do
    Rake::Task['deploy:config_env:heroku'].invoke
  end
end
