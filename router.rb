# Access parameters passed into the app

if ARGV.empty? # there are no arguments provided
  puts "USAGE: bla bla bla"
else
  puts "Ya, you passed in some arguments :)"
  
  if ARGV[0] == "index"
    puts "Action: index"
  elsif ARGV[0] == "show"
    puts "Action: show"
  else
    puts "Unrecognized action. Please refer to USAGE."
  end

end

