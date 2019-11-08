# Write your code here.
def line(deli_line)
  if deli_line.size > 0 # try #empty? method next time!
    current_line = deli_line.each_with_index.map {| guest, index | "#{index+ 1}. #{guest}"}
    puts "The line is currently: " + current_line.join(" ")
  else
    puts "The line is currently empty."
  end
end

def take_a_number(deli_line, guest)
  puts "Welcome, #{guest}. You are number #{deli_line.size + 1} in line."
  deli_line << guest
end

def now_serving(deli_line)
  if deli_line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line.shift}."
    return deli_line
  end
end
