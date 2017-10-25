task :default => [:build]

task :build do
  sh "bundle exec jekyll build"
end

require "html-proofer"
task :test do
  sh "bundle exec jekyll build"
  options = { :assume_extension => true }
  HTMLProofer.check_directory("./_site", options).run
end
