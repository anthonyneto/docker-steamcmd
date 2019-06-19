registry = 'docker-registry-private.theneto.com'
name = File.basename(__dir__)
version = 'latest'

task default: %w(build push)

task :build do
  no_cache = '--no-cache' if ENV['cache'] == 'false'
  sh "docker build #{no_cache} -t #{registry}/#{name}:#{version} ."
end

task :push do
  sh "docker push #{registry}/#{name}:#{version}"
end
