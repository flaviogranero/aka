require "aka/exceptions"
require "octokit"

module Aka
  
  class Github
    def initialize(options)
      validate_options!(options)
      @client = Octokit::Client.new(:access_token => options[:token])
    end
    
    # creates a pull request using current branch changes
    def create_pull_request(repo, branch, story)
      base = "master"
      title = "[##{story.id}] #{story.name}"
      pull_request = @client.create_pull_request(repo, base, branch, title, story.description)
      if pull_request.nil?
        raise Aka::AkaError, "error on submiting the pull request"
      else
        pull_request
      end
    end
    
    private
    
    def validate_options!(options)
      if options.nil? || options.empty?
        raise Aka::AkaError, "github missing configuration"
      end
      required_keys = %w(token)
      missing_keys = required_keys - options.keys
      if missing_keys.size > 0
        raise Aka::AkaError, "github missing configuration: #{missing_keys.inspect}"
      end
    end
  end
end