Dir.glob('./{config,controllers,services,views}/init.rb').each do |file|
  require file
end

run SentiJapApp
