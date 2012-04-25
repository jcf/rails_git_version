require 'spec_helper'

describe RailsGitVersion do
  describe '#config' do
    subject { RailsGitVersion.config }

    # When the next version of RSpec is released I can use the following
    # instead!
    #
    #   its(:root) { should_not end_with('spec/dummy') }

    its(:root) { should_not match(%r{spec/dummy$}) }
  end
end
