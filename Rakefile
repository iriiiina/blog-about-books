task :default => [:build]

task :build do
  sh "bundle exec jekyll build"
end

require "html-proofer"
task :test do
  options = {
    :assume_extension => true,
    :check_favicon => true,
    :check_html => true
  }
  HTMLProofer.check_directory("./_site", options).run
end
