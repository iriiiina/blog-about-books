require "html-proofer"
require "w3c_validators"

task :default => [:build]

task :build do
  sh "bundle exec jekyll build"
end

task :test do
  options = {
    :assume_extension => true,
    :check_favicon => true,
    :check_html => true
  }
  HTMLProofer.check_directory("./_site", options).run
end

task :test do
  include W3CValidators
  @validator = NuValidator.new

  file = File.dirname(__FILE__) + "/_site/index.html"
  results = @validator.validate_file(file)

  if results.errors.length > 0
    results.errors.each do |err|
      puts "index.html: " + err.to_s
    end
  else
    puts "index.html is valid according to W3C"
  end
end

task :test do
  include W3CValidators
  @validator = CSSValidator.new

  fileBlog = File.dirname(__FILE__) + "/_site/css/blog.css"
  @validator.set_profile!("css3svg")

  resultsBlog = @validator.validate_file(fileBlog)
  if resultsBlog.errors.length > 0
    resultsBlog.errors.each do |err|
      puts  "blog.css: " + err.to_s
    end
  else
    puts "blog.css is valid according to W3C"
  end

  filePost = File.dirname(__FILE__) + "/_site/css/post.css"
  resultsPost = @validator.validate_file(filePost)
  if resultsPost.errors.length > 0
    resultsPost.errors.each do |err|
      puts  "post.css: " + err.to_s
    end
  else
    puts "post.css is valid according to W3C"
  end
end
