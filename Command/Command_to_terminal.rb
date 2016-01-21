string_a = gets.chomp.split(" ")
time = string_a[4]
time = time.to_i 
system 'echo "Your timer has been set! I will wake you up soon"|espeak -v female3'
sleep time*60
exec 'echo "Hey! Shalvin. Wake up! Wake up! Its a brand new day oooo"|espeak -v female3'