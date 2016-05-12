@menu = ['command line', 'search', 'exit']

@command = ['mv', 'cp', 'mkdir', 'ls', 'rm']

@command_hash = {
  mv: `man mv`, 
  cv: `man cp`, 
  mkdir: `man mkdir`,
  ls: `man ls`,
  rm: `rm`
}

def menu_option
  puts "-------- Man Page ---------"
  @menu.each_with_index { |intro, i| puts "#{i + 1}. " + intro }
  puts "Choose One: "
  user_input = gets.strip.to_i
  case user_input
    when 1
      puts "-------- Command Options --------"
      @command.each_with_index { |command, i| puts "#{i + 1}. "  + command}
      command_line
    when 2
      search
      menu_option
    when 3
      puts "Exiting Program"
      exit(0)
    end
end

def search
  puts "what are you searching for?"
  user_input = gets.strip
  user_input.to_i
  puts `man #{user_input}`
end

def command_line
  command_input = gets.strip.to_s
  puts @command_hash[:"#{command_input}"]

end

while true
  menu_option
end

