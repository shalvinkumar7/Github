#start
user_name = gets.chomp
user_email = ""
file = File.new("user_dir.txt", "r")
found = 0
found1 = 0
while (line = file.gets)
	if found ==1 and line.chomp == user_name
		found1 = 1
		found+=1
	end
	if line.chomp == "end"
		found = 0
	elsif line.chomp == "user"
		found = 1
	end
end
file.close
if found1 ==0
	puts "I can't find you in my memory :("
	print "Please add your email: "
	user_email = gets.chomp
	file = File.new("user_dir.txt","a")
	file.write("\n")
	file.write("user\n")
	file.write(user_name)
	file.write("\n")
	file.write(user_email)
	file.write("\n")
	file.write("end")
	file.close
end

#Memory_Element
hash_data = Hash.new
#Library
hash_data["exit"] = -1
hash_data["time"] = 0
hash_data["day"] = 1
hash_data["date"] = 2
hash_data["wake"] = 3
#Library_end

#Functions
def day(r)
	if r == 0 
		return "Sunday"
	elsif r==1
		return "Monday"
	elsif r==2
		return "Tuesday"
	elsif r==3
		return "Wednesday"
	elsif r==4
		return "Thursday"
	elsif r==5
		return "Friday"
	else
		return "Saturday"
	end
end
			
			
			

#Functions_end

puts "Hey! #{user_name}, How can I help you?"
loop do
	print "#{user_name}: "
	string_check = gets.chomp.split(" ")
	index = 0
	key = -2
	loop do 
		break if index>=string_check.size()
		if hash_data["#{string_check[index]}"] != nil 
			key = hash_data["#{string_check[index]}"]
		end
		index+=1
	end
	#Key_checker
	if key < -1 
		system 'echo "I am still learning. Please try me after few days! ;)"'
	elsif key == -1
		exit()
	elsif key == 0
		time = Time.new
		puts "Time is #{time.hour} hours and #{time.min} minutes and #{time.sec} seconds"
	elsif key==1
		time = Time.new
		puts "Today is #{day(time.wday)}"
	elsif key==2
		time = Time.new
		puts "The date is #{time.day} day of #{time.month} month and #{time.year} year"
	elsif key==3
		time = string_check[4].to_i
		puts "Your alarm has been set"
		sleep time*60
		puts "Wake up! Wake up! Ohhoo"
		puts "Times up!"
	end
end



