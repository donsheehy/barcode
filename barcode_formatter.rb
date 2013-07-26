#!/usr/bin/env ruby -wKU

state = 0;
dim = 0;
current_string = ""
bars = []

ARGF.chars do |c|
  if (state == 3 and c == ']')
    state = 0
    dim += 1
  end
  if (state == 2 && c == ']')
    state = 3 
    bd = current_string.split(";");
    bars << [dim, bd[0], bd[1]] unless bd[0].eql?(bd[1])
    # puts "#{dim} #{bd[0]} #{bd[1]}" unless bd[0].eql?(bd[1])
    current_string = ""
  end
  current_string << c if state == 2
  state = 2 if (state == 3 and c == '[')
  state = 2 if (state == 1 and c == '[')
  state = 1 if (state == 0 and c == '[')
end

bars.sort{ |x,y| ((x[0] < y[0]) or ((x[0] == y[0]) and (x[1] > y[1])))? -1 : 1}.each do |bar|
  puts "#{bar[0]} #{bar[1]} #{bar[2]}"
end
