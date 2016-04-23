require 'spec_helper'

describe RubyCExt do
  it 'has a version number' do
    expect(RubyCExt::VERSION).not_to be nil
  end

  describe "::double_it" do
    it "doubles the arg" do
      expect(RubyCExt.double_it 2).to eq 4
    end
  end

  describe "::foo" do
    it "does something" do
      str = "abcdef"
#      str = %w[a b c d e f]
      ksize = 3
      expect { |b| RubyCExt.foo(str, ksize, &b) }.
        to yield_successive_args("abc", "bcd", "cde", "def")
    end
  end
end
