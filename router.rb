require_relative 'html_generator'


if ARGV.empty? # there are no arguments provided
  puts "USAGE: bla bla bla"
else
  puts "Ya, you passed in some arguments :)"
  generator = HtmlGenerator.new
  if ARGV[0] == "index"
    generator.index  
  elsif ARGV[0] == "show"
    generator.show
  else
    puts "Unrecognized action. Please refer to USAGE."
  end

end

