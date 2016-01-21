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

system 'echo "Hey! Shalvin, How can I help you?"'
loop do
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
		system 'echo "Your alarm has been set"|espeak'
		sleep time*60
		puts "Wake up! Wake up! Ohhoo"
		puts "Times up!"
	end
end

