require 'open-uri'

url = 'https://en.wikipedia.org/wiki'

append = ['hjdg1','hdjehd6','fire']

append.each do |resource|
  begin 
    page = open("#{url}/#{resource}")
  rescue StandardError=>e
    puts "ERROR: #{e}"
  else
    puts "Reading Page..."
    read_page = page.read
  ensure
    puts "sleeping"
    sleep 3
  end
  
   if read_page
    File.open("copy-#{resource}.html", "w"){|f| f.write(read_page) }
   end
end

#Learning exception handling from
#http://ruby.bastardsbook.com/chapters/exception-handling/