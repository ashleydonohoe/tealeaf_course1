dictionary = {
  nouns: ['dog', 'car', 'clown', 'boy', 'girl'],
  verbs: ['juggle', 'spin', 'run', 'touch', 'walk'],
  adjectives: ['giant', 'red', 'small', 'shiny', 'heavy']
}

def say(msg)
  puts "=> #{msg}"
end

def exit_with(msg)
  say msg
  exit
end

exit_with("No input file!") if ARGV.empty?
exit_with("File doesn't exist!") if !File.exists?(ARGV[0])

contents = File.open(ARGV[0], 'r') do |f|
  f.read
end


contents.gsub!('NOUN').each do |noun|
  dictionary[:nouns].sample
end

contents.gsub!('VERB').each do |verb|
  dictionary[:verbs].sample
end

contents.gsub!('ADJECTIVE').each do |adjective|
  dictionary[:adjectives].sample
end

p contents