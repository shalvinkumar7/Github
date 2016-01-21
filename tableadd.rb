file = File.new("trial.html","a")
s_no = 1
s0 = gets.chomp 
loop do 
	s1 = gets.chomp 
	s2 = gets.chomp
	file.write("\t\t\t<tr>")
	file.write("\n")
	file.write("\t\t\t\t<td>#{s_no}</td>")
	file.write("\n")
	file.write("\t\t\t\t<td>#{s0}</td>")
	file.write("\n")
	file.write("\t\t\t\t<td>#{s1}</td>")
	file.write("\n")
	file.write("\t\t\t\t<td>#{s2}</td>")
	file.write("\n")
	file.write("\t\t\t</tr>")
	file.write("\n")
	s_no+=1
end
file.close
	