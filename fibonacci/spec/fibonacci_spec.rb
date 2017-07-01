require 'spec_helper'

RSpec.describe Fibonacci, type: :model do
  describe 'recursive_fib' do
    it 'should return the nth digit of the Fibonacci sequence' do
      expect(Fibonacci.recursive_fib(9)).to be 34
    end
  end

  describe 'iterative_fib' do
    it 'should return the nth digit of the Fibonacci sequence' do
      expect(Fibonacci.iterative_fib(9)).to be 34
    end
  end

end
