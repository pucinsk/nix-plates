require "spec_helper"
require_relative "../../lib/ruby_nix"

RSpec.describe "Ruby Nix" do
  it "allows execute Ruby code" do
    expect(ruby_nix?).to be(true)
  end
end
