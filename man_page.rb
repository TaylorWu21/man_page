
def intro
  #create a menu array
  #print out menu of command lines and exit
  puts "---Cheatsheet---"
  puts "0: Command Line"
  puts "1: Search"
  puts "2: Exit"
  get_user
end

def get_user
  menu = ['command Line', 'search', 'exit']
  print "> "
  user_input = gets.chomp.to_i

  if user_input == 0
    puts "#{menu[0]}"
    user_chose_0
  elsif user_input == 1
    puts "#{menu[1]}"
    search
  elsif user_input == 2 #quit the program
    puts "#{menu[2]}"
    exit
  end
end

def user_chose_0
  #command line option
  puts "---Command Option---"
  puts "0: mv"
  puts "1: cp"
  puts "2: mkdir"
  puts "3: ls"
  puts "4: rm"
  man_page
end

def man_page
  command_menu = ['mv', 'cp', 'mkdir', 'ls', 'rm']
  print "> "
  user_choice = gets.chomp.to_i
  if user_choice == 0
    puts `man #{command_menu[0]}`
  elsif user_choice == 1
    puts `man cp`
  elsif user_choice == 2
    puts `man mkdir`
  elsif user_choice == 3
    puts `man ls`
  elsif user_choice == 4
    puts `man rm`
  else 
    puts "invalid option"
  end
end #end of user_chose_0 method
#option 1 print out cmd line options (mv, cp, mkdir, ls, rm)

#output man page for selected
def search
  puts "what are you searching for?"
  user_input = gets.strip
  user_input.to_i
  puts `man #{user_input}`
end

while true
  case intro
  when 0
    man_page
  when 1
    search
  else
    puts "Try again"
    intro
  end
end




