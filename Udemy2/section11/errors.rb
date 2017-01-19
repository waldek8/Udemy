#errors
begin
	puts 8/0
rescue
	puts "rescued"
end

#specific errors
begin
	puts 8/0
rescue ZeroDivisionError => error
	puts "Error alert: #{error}"
end


begin
	puts nil + 8
rescue StandardError => error
	puts "Error alert: #{error}"
end

#custom errors
def erorr_logger(e)
	File.open('errors.txt', 'a+') do |file|
		file.puts e
	end
end

begin
	puts 10 / 0
rescue StandardError => error
	erorr_logger("Error alert: #{error} at #{Time.now}")
end