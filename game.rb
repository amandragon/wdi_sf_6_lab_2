pages_with_questions = {}

lines_grabbed= ""
key=""

File.open("story.txt","r") do|infile|
	while (line=infile.gets)
		if line.index("~p") 
			key=line
			lines_grabbed=""

		else
			lines_grabbed+=line
		end
		pages_with_questions[key]=lines_grabbed
	end
end
p1=pages_with_questions.select do |key,value|
	key.index("~p1")
end
p1.each do |k,v|
	puts v
end

puts "Pick one, two, or three"
input=gets.chomp
	if input=="one"
		p1=pages_with_questions.select do |key,value|
	key.index("~p2")
	end
p1.each do |k,v|
	puts v
end
elsif input=="two"
		p1=pages_with_questions.select do |key,value|
	key.index("~p3")
	end
p1.each do |k,v|
	puts v
end
else
		p1=pages_with_questions.select do |key,value|
	key.index("~p4")
	end
p1.each do |k,v|
	puts v
end
end