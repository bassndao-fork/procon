#!/usr/bin/ruby
require'prime';puts gets.to_i.prime_division.reduce(0){|s,e|s+e[1]}>2?:YES: :NO