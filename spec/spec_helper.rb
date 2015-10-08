require 'simplecov'
require 'vcr'
SimpleCov.start

VCR.configure do |config|
  config.cassette_library_dir = 'spec/vcr_cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.default_cassette_options = {
    match_requests_on: [:method, VCR.request_matchers.uri_without_param(:key)]
  }
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!
  config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed
end
