#!/usr/bin/ruby
gets.to_i.times{
	a=gets.split
	puts a.reduce(0){|s,e|s+("%0#{a.map(&:size).max}d"%e.reverse).to_i}.to_s.reverse.to_i
}