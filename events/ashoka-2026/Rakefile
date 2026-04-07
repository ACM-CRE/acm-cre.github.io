# ACM COMPUTE Regional Event - Build and Deploy Tasks

require 'fileutils'

desc "Build the Jekyll site"
task :build do
  puts "==> Building site..."
  sh "bundle exec jekyll build"
end

desc "Serve the site locally"
task :serve do
  sh "bundle exec jekyll serve"
end

desc "Deploy to GitHub Pages (gh-pages branch)"
task :deploy do
  # Check we're in repo root
  unless File.exist?("_config.yml")
    abort "error: Must run from repository root (where _config.yml is located)"
  end

  # Warn about uncommitted changes
  unless `git status --porcelain`.empty?
    puts "warning: You have uncommitted changes. Consider committing before deploying."
    puts
  end

  # Get remote URL
  remote_url = `git remote get-url origin 2>/dev/null`.strip
  abort "error: No git remote 'origin' found" if remote_url.empty?

  # Get git user config
  git_user_name = `git config user.name`.strip
  git_user_email = `git config user.email`.strip
  abort "error: Git user.name not configured" if git_user_name.empty?
  abort "error: Git user.email not configured" if git_user_email.empty?

  # Build
  puts "==> Building site..."
  sh "bundle exec jekyll build"

  # Verify build output
  unless File.directory?("_site") && !Dir.empty?("_site")
    abort "error: Build produced no output in _site/"
  end

  puts "==> Preparing deployment..."
  Dir.chdir("_site") do
    # Add .nojekyll to prevent GitHub from processing with Jekyll
    FileUtils.touch(".nojekyll")

    # Initialize fresh git repo
    sh "git init -q", verbose: false
    sh "git checkout -q -b gh-pages", verbose: false

    # Configure git
    sh "git config user.name \"#{git_user_name}\"", verbose: false
    sh "git config user.email \"#{git_user_email}\"", verbose: false

    # Commit
    sh "git add -A", verbose: false
    timestamp = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    sh "git commit -q -m \"build: deploy #{timestamp}\"", verbose: false

    # Push
    puts "==> Pushing to gh-pages..."
    sh "git push -f -q \"#{remote_url}\" gh-pages", verbose: false
  end

  # Cleanup
  FileUtils.rm_rf("_site/.git")

  puts
  puts "==> Deployed successfully!"
  puts
  puts "Site will be available at your GitHub Pages URL shortly."
  puts
  puts "First time? Configure GitHub Pages:"
  puts "  1. Go to: GitHub repo > Settings > Pages"
  puts "  2. Source: Deploy from a branch"
  puts "  3. Branch: gh-pages / (root)"
  puts "  4. Save"
  puts
end

desc "Clean build artifacts"
task :clean do
  FileUtils.rm_rf("_site")
  FileUtils.rm_rf(".jekyll-cache")
  puts "Cleaned _site/ and .jekyll-cache/"
end

task default: :serve
