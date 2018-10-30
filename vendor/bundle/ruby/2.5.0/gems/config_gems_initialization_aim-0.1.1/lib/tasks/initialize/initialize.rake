namespace :initialize do
  task :all do
    Rake::Task["initialize:rubocop"].invoke
    Rake::Task["initialize:editorconfig"].invoke
    Rake::Task["initialize:reek"].invoke
    Rake::Task["initialize:gitlab"].invoke
    Rake::Task["initialize:overcommit"].invoke
  end

  task :rubocop do
    file_rubocop = File.expand_path('template', __dir__) + '/.rubocop.yml'
    FileUtils.cp(file_rubocop, Dir.pwd)
  end

  task :overcommit do
    file_overcommit = File.expand_path('template', __dir__) + '/.overcommit.yml'
    FileUtils.cp(file_overcommit, Dir.pwd)
  end

  task :editorconfig do
    file_editorconfig = File.expand_path('template', __dir__) + '/.editorconfig'
    FileUtils.cp(file_editorconfig, Dir.pwd)
  end

  task :reek do
    file_reek = File.expand_path('template', __dir__) + '/.reek.yml'
    FileUtils.cp(file_reek, Dir.pwd)
  end

  task :gitlab do
    file_gitlab = File.expand_path('template', __dir__) + '/.gitlab-ci.yml'
    FileUtils.cp(file_gitlab, Dir.pwd)
  end
end
