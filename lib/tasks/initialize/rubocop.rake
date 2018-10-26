namespace :initialize do
  task :rubocop do
    file_rubocop = File.expand_path('template', __dir__) + '/.rubocop.yml'
    FileUtils.cp(file_rubocop, Dir.pwd)
  end
end
