namespace :initialize do
  task :all do
    Rake::Task["initialize:rubocop"].invoke
    Rake::Task["initialize:editorconfig"].invoke
  end

  task :rubocop do
    file_rubocop = File.expand_path('template', __dir__) + '/.rubocop.yml'
    FileUtils.cp(file_rubocop, Dir.pwd)
  end

  task :editorconfig do
    file_rubocop = File.expand_path('template', __dir__) + '/.editorconfig'
    FileUtils.cp(file_rubocop, Dir.pwd)
  end
end
