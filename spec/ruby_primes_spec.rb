require 'spec_helper'
require_relative '../lib/ruby_primes.rb'

describe Primes do
  describe "#generate_primes" do
    let(:primes) { Primes.generate_primes(10)}

    it "should return N numer of prime numbers" do
      expect(primes.length).to eq(10)
    end

    it "should return all valid prime numbers" do
      expect(primes).to match_array([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end

    it "should return empty if N is less than 2" do
      primes = Primes.generate_primes(0)
      expect(primes).to match_array([])
    end
  end

  describe "#is_prime?" do
    it "should return true for prime numbers" do
      expect(Primes.is_prime?(2)).to eq(true)
      expect(Primes.is_prime?(3)).to eq(true)
      expect(Primes.is_prime?(5)).to eq(true)
      expect(Primes.is_prime?(17)).to eq(true)
      expect(Primes.is_prime?(23)).to eq(true)
    end

    it "should return false for invalid numbers" do
      expect(Primes.is_prime?(6)).to eq(false)
      expect(Primes.is_prime?(2.7)).to eq(false)
      expect(Primes.is_prime?('2')).to eq(false)
      expect(Primes.is_prime?(4)).to eq(false)
      expect(Primes.is_prime?(3.141592654)).to eq(false)
    end
  end
end