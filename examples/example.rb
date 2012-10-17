#!/usr/bin/env/ruby

require 'split-where'

list = "value:'xx',value:'yy,'".split_where(value:",", outside:"'")
puts list[0]
