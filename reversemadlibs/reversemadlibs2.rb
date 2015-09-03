def say(msg)
  puts "=> #{msg}"
end

def exit_with(msg)
  say msg
  exit
end

def get_input(word)
  puts "Please inpu t a #{word}:"
  STDIN.gets.chomp
end

exit_with("No input file!") if ARGV.empty?
exit_with("File doesn't exist!") if !File.exists?(ARGV[0])

contents = File.open(ARGV[0], 'r') do |f|
  f.read
end

contents.gsub!('NOUN').each do |noun|
  get_input(noun)
end

contents.gsub!('VERB').each do |verb|
  get_input(verb)
end

contents.gsub!('ADJECTIVE').each do |adjective|
  get_input(adjective)
end

p contents